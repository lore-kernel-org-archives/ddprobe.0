Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8D1F2DCBF8
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752849593; cv=none; b=FU/UcP/S/LPjhzo+xz8gpJsZ/NU0e7/GvmmNRGvp5xnyibPGPi6c/hG4GLu3QD4yhbYthWvjb5Edd7UAbElVz89k/eWZ4Ja9IUG7+yXLUpc8JZJ04kLfoMpbccKqSfHWl298QfW/FoNqhAEIMK/viedG/+7CR1bN1ple+XfZphw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752849593; c=relaxed/simple;
	bh=Ov6IFYeR84zLj0f1l4jPBjngvsfGVq1D70GDYPe226c=;
	h=To:Subject:From:Message-Id:Date; b=S3l9v6sGUP9K9HiNHNLuF15UqzzFHmZb2gkZ0qz/mOP8Yl9uorxDTStHytxlWMW7k9mV2EJ/laBx7n+v+GuQMPZfeyXil51wtBEBCameRl/5qChMuCBOmlx3c0hBkkRV3pwWHSL4f+1wHLGdWJVcYGH79+V8qERtduXq2YHJflM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ONSOOUkd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ONSOOUkd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE4FC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752849593;
	bh=Ov6IFYeR84zLj0f1l4jPBjngvsfGVq1D70GDYPe226c=;
	h=To:Subject:From:Date:From;
	b=ONSOOUkd2g2Akw+a59wLnhUrZTBwRX31D6zuv0c6MPASMxGdu9Al9mamkcdQfOJzq
	 xV4kicowfgrBlWQW07pRCESEZGe7RBrbGXo2KtrdTEIoh8gfH6+hp7D651bVVmNyEG
	 2TG/zmOj8lgmjZLFDiRd5hBZNpRTI04WFKYhS6E25dqHN8Qzu3X0PoMRfgk+dXPFCe
	 zn1zM5Cs9sBtciKpmB9RQ4UFPif44dVpOcY9o4AALzSWY2cc4arYwK31u1BuENH2op
	 hMlfsiMlmSQtLh+LFBOYvhPjPsKONltILvbcpxWiYqfddTbX8u7EGBkRuNljpk2PAX
	 JuQD4jc+Sf6gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEFAC83F17
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175284959358.22978.7276955601124798359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05eb6f6b30ebea90cd88a684dbc4d7423b3799b613498c40267cffe5dc42a216
Date: Fri, 18 Jul 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752849593
