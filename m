Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A1821771C
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 13:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772197494; cv=none; b=FUAtoGyNpBYotN6mNUBZpFzkKP7wDlvd1ju1o82sSpQIbtVIs47Bh+3f/eYR3UVyPDgTeuQw/Ohg7bQjGCuOMuyqTmC9ASeK2Fl3vztRDAF+RN604DKQH37iE/WJuIIK+U+my7x4XsdUkvzkMsjVEfyDaKkDfoLyhRHMBxSN6fM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772197494; c=relaxed/simple;
	bh=KiV41RcUuI1gLtcs9sH0XETG7noPZb1h2P4W7HNgzWw=;
	h=To:Subject:From:Message-Id:Date; b=qe/0RxuScn+Q3yqOPqFAk9DLBtbQ8oaCIBbqF/vt1Emak2HME6VfHSNuORIlDz8aLAZSlSbJeD08puqSG0lwERHA3U2KdSFiBevfwe0PN5jWoqv0Eg2AqtLjDdMKFhizD4yYJ04qQajky7NYCxz0NkPU3CqpFpBMa8GWjoPBn30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qixInob6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qixInob6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC05C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 13:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772197493;
	bh=KiV41RcUuI1gLtcs9sH0XETG7noPZb1h2P4W7HNgzWw=;
	h=To:Subject:From:Date:From;
	b=qixInob6ysLBMO2oXpII1opjAOpTsUpKaRBfV2esUDjcTTfq2lnTBN/h4TbegePhx
	 TfwesG8f0xtc6DhQhx0gVqM4zhAAQjM7fFtQ1Uyp9oGBLEeOXLY8E06d7s0GqXx0hl
	 a8Wg9EIn8fr0Jj/D638MZ5aGaX+Ol10Ac6M355kHsi1mehy7xhAQVK801fZmRdywba
	 FsdjhGgOFniCe5YNnPL3SSNtDsx3R+lYRZ35YxrN/L0FVu/QGJhhwYNhYCyFX3d2m7
	 PEc6kJniqyvyuLNfYwDG4lCokcB5qHXpRicemrgGbZ3L7CGOw5svvKq6I9QuTnQZd/
	 eL5z50JYQyODQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F020FEFB47
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 13:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177219749357.8135.7458876999193294285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93100148291227ab678b3a1a08237c470f4b93c01b974c77cfa8249c3a4db2ad
Date: Fri, 27 Feb 2026 13:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772197493
