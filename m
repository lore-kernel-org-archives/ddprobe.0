Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8D521E098
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 14:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771164294; cv=none; b=X6c69renH/5N4CKLGR4tvlgg1O9hIZ3Jh1784wY9z0na89ji3ZP1BzGUMI9Iuls3wZTH2vKN8vzYa2vK646sDwVcOwRNu3CaEWfGTxFozl2UL/GCEDHNfJg9zIKjDl4NzNbG7/BiznKeVtiCv42+d2SYwF+5CfXJkfzQn1mSHVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771164294; c=relaxed/simple;
	bh=yQjzNp5q2XzL/8YBTCcWuKD0pfOf6qcC5GKMIMMnxRg=;
	h=To:Subject:From:Message-Id:Date; b=Nm7Z/woSPhGQYprqKGARDIPoiXNbyH89XMMxBZgJW8Qe06vtnFULTFK4VlYOVEyQTxpnWZrm6IlnkTisWAxZwUvD9abTZASiVs+KSrEx8GS1N1+4HdrZ776tLzfAbVfsZBz3qNXNfTCwNfEfYbINQXG7NJxRN99RliA4ce1e2m8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A+/8GMMN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A+/8GMMN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0F98C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771164293;
	bh=yQjzNp5q2XzL/8YBTCcWuKD0pfOf6qcC5GKMIMMnxRg=;
	h=To:Subject:From:Date:From;
	b=A+/8GMMNOV6iOoESiTUg7hXxBRae+g0pCX0rVV3Qr8nDnyFxPRKNePuNeW69h0SKo
	 mQDYvCHrrV2yQkBSCddTZfc3fmtw5QsCio5ARvmelaWdRfqk7cAM7J/CvJ5HRy9A2i
	 XxsxlxG/ed0hXvgtcKbGHKD1Ij9ghwMTDvbl9+sfabJuQBLwqBqDpOMSbxmG1AX4ia
	 UtLRreDBnyZo9K4tvQe6681PIgpqaswouJvJYMyAmpjAMZ8z2ZmPSeFkKDTAFanNKo
	 dHffkNZN6jOEFsYd6VSoqrPWmZ4q7jG96F8Di8CsnmjmFd8XBGEM6v30Ci5qpWeI5k
	 jNy4ze9JsYhMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D269EF586E
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 14:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177116429360.20492.5967051810723208704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfa42189df59737793da6d80d518dd637567cc063ab71a930b5063f6101b7947
Date: Sun, 15 Feb 2026 14:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771164293
