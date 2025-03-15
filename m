Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA6618DB0A
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742074796; cv=none; b=RWq9+SOHEXZkICpFl3dXSE1FxyhZyBEPhYPY4WMTyu6S60oBX+IgoEo/naUeyOed88i5NjDnqXTYNUBX9IAs3hTTHwF4rhbtE1sPtb7dsOVL4aAZkcIpIEnIR1OMp7dofqtjT/afFSs+app2szMvwSbaV9it0pQjTNiIMFRLQ2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742074796; c=relaxed/simple;
	bh=FJ6CFxlKxUu5qMk011CVmzvMi9tV3IdPPsEy/mYRx4A=;
	h=To:Subject:From:Message-Id:Date; b=iT3ahXSmSTVLeEq1NV7vS8bmGoBmulvCshfFAGRwK/pq9gYnc2F0XOUgUDtthpI+jqJj/PH/kGOlEHkpOy/3kcY/HJGi+K/oU7h/1bx0rm085rIkBOY1CrIY/Ja5ZLFNmTftTrqHO4+uDP8aGfyFXIuffMRgLIKKGeQKRoMhabs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iEhp+h/j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iEhp+h/j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8969C4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742074793;
	bh=FJ6CFxlKxUu5qMk011CVmzvMi9tV3IdPPsEy/mYRx4A=;
	h=To:Subject:From:Date:From;
	b=iEhp+h/jjtAzqiZFsGpPegCvQm2GRWJgM1pj4r90JnouoePorapqtOkmQ8diBWQfM
	 b3+dyYl0eMl6GGNDaZwwh6hOZLv+ce/qRjBagy3It3l94p9hoBAiQ2zLEdLXUjOFeF
	 ZMdURtNnfOvJ9bVEyKguFvnx/D7TqlIrCNMo0yKctHIivYCPsQSUoC8NDWS5OaP4/l
	 Umc4r48DQ6FGJO13sy0B50GjjfpL5YxKQnSxXr+8igqpHUARbfsG/QJi4xpm747XLt
	 puEYKy3Uh+UXR3yWKgLRjlQRg4wceJq/q0/O7qD/TRS9/8jlQQpF1uK5b8x9mjzfOC
	 4P3P5OFPHqTxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A165BC28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174207479364.27101.15248607867821682139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72afe2f44f3ca7bbe297b055b922f0507fe1551ce9b696b8f0673ba209487319
Date: Sat, 15 Mar 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742074793
