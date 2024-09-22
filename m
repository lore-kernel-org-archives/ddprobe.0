Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ADA8156993
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727003754; cv=none; b=GPP/oVps8CHYIvwKNPx1jC9Wd1ClekufOXJAbB1Rkc5/dR6EMRxYDwiAF/vZC1i2PtTCvRWyAYqU1O7sHd5SiXRkAiKQp9VkHNUZeLMGoTZOWazDVGGlD0LHZ2BQMloclG/oASg7x4x61bPDArNJcjaVTwco9d4fsjh8nDxBdgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727003754; c=relaxed/simple;
	bh=F2EJynpTiRg4AK0uDe+EPPexM7SR1Gc4QYhzagxD7AA=;
	h=To:Subject:From:Message-Id:Date; b=ndNGLglMAqlRDU9t5rdtwovrEeH3/Zj9zkgzS032qg8H/U4rOJZx1yD5k+M3knCVQ8Dy3a9G6PoAn+5l2dHggCsv8cboHbMEAabESkTxqxEN/UGYo/nAC4K9pswTWcTbM0JPpOLW7CMOZreitSXx3kKYFKSWtcMRHsMNEdeVFdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JNg1WM3w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JNg1WM3w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB663C4CEC4
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727003753;
	bh=F2EJynpTiRg4AK0uDe+EPPexM7SR1Gc4QYhzagxD7AA=;
	h=To:Subject:From:Date:From;
	b=JNg1WM3wxQ3o24RycEKGn5alN/FpHflP2llVsqNH6pq1hDXduxYE0Hgkn26jvR5Xu
	 O2fOTdul+ZWzlh/oL6p3XMxise2XO+Qtoyb9VgZCjoLeWwfy4UKM//Qam1ugRTVAD+
	 WVixBtayzGXy4W3ijfOgxxXT3Os7y4pQf0sIoc5Ki561ixRwEBCgC8TILHCnseSQTk
	 dBYXpzwqU+Te67EN4+/NVRkZgI7h7W8Qv39rPOO6OkS9WQ4kuFpTk0Tghs4K9LAZWL
	 kz5MiyVS5KWx64wCOOA+naVldrds4+MD2HrD/JrUiORZvhXS2yt6CzJtcFlkMohry+
	 oO6DPNhCHiCxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A945FCF9C64
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172700375365.412.7054275384643086496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fec9ecd655ab7ea0cc0022dfded07b062c382b0ce4d392d404d0268e106842d5
Date: Sun, 22 Sep 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727003753
