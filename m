Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A9D2F0C71
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 07:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771226094; cv=none; b=dmxeXXIZ59RwAaPfRsmlnQOyfatkABhrxcVthlG8+WVCTtRnl9g9gn/dKEtFbAUOrw2jx5eEBLxJWLPf0FUFESXIMMUADyNT3pTj0msDGtDLSoNPkvB+NRB5WNjhWSyea272Tqc1me26D/iVDZ+alTFiwgJB4C+cd6yaayuAbMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771226094; c=relaxed/simple;
	bh=TeLmw5fuL3PPZ9f7pD8Bz/Bz97Olwaj2QFL1LK8vECk=;
	h=To:Subject:From:Message-Id:Date; b=UGhH1Z9UyqIrtQGmIcmfjUrTi9nEbcqEYKGq5H2VA6TbfYTteerpFw0vccJcC89j/EKMGMdiA0G1GuFfTmwLpwyxedp2/s9TdlSunKREf2wL86iC5aTtGdZrd0uQaTEW7TAjqDd0ZK1+qmpFrNpmGRKf8mSQJcMbo8UXQT4Mdjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CX37YPh4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CX37YPh4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE79AC116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 07:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771226093;
	bh=TeLmw5fuL3PPZ9f7pD8Bz/Bz97Olwaj2QFL1LK8vECk=;
	h=To:Subject:From:Date:From;
	b=CX37YPh4Q9zczuOC3GXcn7PktDCKDYzzueRLQylM8GbfpSPlgxmjW2Ze23BoDArc7
	 AaxaMtSvnLbbdrHPx4kq9rXwL4KyJ+i3tyMZqhATcxhER0TTzE7VwdleK4nXCU6v1+
	 hYSAziMZKqxxkgMR6bpmaPxV91dpa5HPUDMw9E9pVPw1S+HsqEJ00is0fKHlqU0TKV
	 U5J3/V2WYOuY3qVkcHl2mfbBnzbW0OA5u3Mg5qqdQDoWu3g915ARfKfNkzNTd+NkPs
	 qI+W9ajLnP9rkWyH3i9p7vOCze0avj1PpX6Ld8U0CaUsUb1hV8TAr7eZ9vj1sYSKvH
	 /6yN982JO0VZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D1EFE63F2A
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 07:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177122609360.6165.15068612981888507387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fa8b1519b664d444a5e7e9d4bdb9ff7e1a66aff0ee4009bddc6f32b8c787dbe
Date: Mon, 16 Feb 2026 07:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771226093
