Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51E802BE7A7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789300834; cv=none; b=LAze6VfQ8T34SjBqkC7nvha+XjXDStKSuPxEMUNUj3h/p09kwaxa0D23ZfrMHK6k+pf5BicqCIjbJS/TGDVB5PmUA/324MFqcE+cqcpu57eqDDkDldFfVGOtlVEImSs0igg6ZIuY7JfJfAdSfLB6yPIMeYghyMrkjagVnGc16Vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789300834; c=relaxed/simple;
	bh=Zdx+7IM58YatxCbpumKmwGlygzAkGqQoBJFPrVhDiCc=;
	h=To:Subject:From:Message-Id:Date; b=EX4QNNv7CPICiwmIox+CLjqRNMTZrLd8hPvgISwtGA0r6g8f6PYJ91xNdT/ccuAOqOApiiKBcbr3PZGBH0/QeK2sbY7JjS6XMtjhd8aTiarx2qGTUYSGc39/sPoFZljl5E0t+QhHI9yb1Ih6raRFNXatW2kwkeOVSv3b6Yvbhe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ep5/MB6i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ep5/MB6i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D50F7C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789300833;
	bh=Zdx+7IM58YatxCbpumKmwGlygzAkGqQoBJFPrVhDiCc=;
	h=To:Subject:From:Date:From;
	b=Ep5/MB6izjZPHJRsecvSJxrJ+avREQjk1gfP11hlaG3BESHVfpNPIUfpv7TDrAwgi
	 QUJ5I9ggfxWfBdn6u2PUoTLqxjuW7sHpLIN7MjW0hqukcgLoeHoqBGj+nCTd/4tKQH
	 ea/covnJFVNOFVUeEhiP+wtJ6Tfi2Q7ZC9tpgVE9g9uJMgnwYFz4UjT9DuFMPNssQT
	 rxf6MM3kwKXvLx6azTdRqL5/pGgbzk1TOqgWYuVRzivg56AFno1/sTq1aDh8NyjZUY
	 RxqjpDZnA66RJ116gHi5Qtfrk1BaYYY3Uu7IGCXt/JNp58WHrwckOtgfkSjGEkZnNd
	 U6uEHYsOK/rPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF2F5C88E56
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178930083368.27134.9952862242803421682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 711c1228a4a1630daae9cb212b70804553502bdb8727a23b9eb6f06f39528bfa
Date: Sun, 13 Sep 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789300833
