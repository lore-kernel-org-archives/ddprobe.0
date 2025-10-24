Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12BBC219A79
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761322794; cv=none; b=NZnJ0T2ZpQgxukiKM7FtGGWuVMUucBGD0Uudz7uC8z3nct7qCZlZDQL8A+3wlgDu6UmvHI9m1fR5IrClCR+YbgEsqn7fLKW8e5bsmnD7uemZRqxPHRBEztEUcE/0wmODlxUqWMgEuyEw+fEatHwZLPcg5vmBNffiq0JeQXa4H4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761322794; c=relaxed/simple;
	bh=30RGdX4tClisY0jR2qjgMnzZ8V22nOkE7vTRP7zeMuA=;
	h=To:Subject:From:Message-Id:Date; b=He0JpADDVj4qWlCkz241g2N07KSozj8bgPO0c+gXfd9n8UmPO3NqVnfotJtcp/3qk+WWw38eiDUKc3JXAVWWMZR5D1HfPOA8AQlku5bVgvzvTp8MIQAGc1QC9KO3pXBuCa8t7bvEDbqlVQvVMtCeeL7LkTgBj9BY7OgdFlZbhTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VXDYpGYz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VXDYpGYz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1232C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761322793;
	bh=30RGdX4tClisY0jR2qjgMnzZ8V22nOkE7vTRP7zeMuA=;
	h=To:Subject:From:Date:From;
	b=VXDYpGYzne0RC9a4RT7xP3Uj8zzIsrhEyuG03wnvfgnjnGa1kxVAdWYm0Uta+j6Vz
	 qiNv0JO8Y5AetR/EwtjFNnl8kYS2ndODCIbrlFyqgDMHpKcJzThW6Sml4GxcTtMHHX
	 A/L51FtaZb+q5DobgMAIqBfL093TTwI37FKYT/Z3/C2i+lXqo3x+tCtTOk82VMcxAW
	 5gNNWHcuxCT23vzMsi10uetkNuGmepTKqjxFTF5iMu3Qh+eRAr7ACyNP2ZYb8knf3L
	 Pl+sgTaj3gjUabc9mQB2XavEX/l90B18i9yvV0U+0YidGD3VI0ehD2f3kDG4TxPnyG
	 pe4Z9RnQPc/hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CD7CCD1BF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176132279358.25801.13623498722553652556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25113695e7a462865797cc6005a176094c2790c272355483b500faca99d768ec
Date: Fri, 24 Oct 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761322793
