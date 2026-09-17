Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 590E947252C
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789687834; cv=none; b=c3b8pPopksS5ef0Qqn6cm/FqY/Vx7SJDAVZ8z9g5W+00h6tSIen5/IWVd/RmlonoLKmP1/qw3sgHz/AKS1UVYkJ0N1HgfiKZupLI6fdcxdqBMqKSqDFK5NCpnfqN5wbcRVrpdlAXZiDASYXMn+G4Z4JOKa+pd3t2ItoxH6+hBng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789687834; c=relaxed/simple;
	bh=FDTAy3Za8pr2n0hVWXPmMG1CjDo63HzjjpBa9tYr78Y=;
	h=To:Subject:From:Message-Id:Date; b=fmdXVmZfEjpXTIEIcpbh5zh3vyZzN34hP6NUmBOLMnG/F433gi3oXG3sXVPJ8XZ9VOtkXfj93P29ObEHs8c+ra7b/u2GvopJ5PV/BTFL3RUHS78/BsarhmouTZwRebvc/f/PQXKKWVkR5HfjWqam7ghT9h8QT6uEagRMKawTDkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YL5Qvgwz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YL5Qvgwz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3293C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789687833;
	bh=FDTAy3Za8pr2n0hVWXPmMG1CjDo63HzjjpBa9tYr78Y=;
	h=To:Subject:From:Date:From;
	b=YL5QvgwzaMpDHS4HiqU6nkvu3QOux8WcpTdd8Qo7wUYP1VsbYAX0+oPSnDt6d+UQ1
	 mj+goEv/QP7bUqrQlPq3YN4GeT6G3XvJ24/+jn3w6vwsAqqUF6X11+B3ZcgaVNzjzr
	 m3wN2bUNFzZc4pe0xyEm9LcgR43joj69nbZOGtRy24no/IFvUV9GlP/DqlkKqQUJpf
	 1+7OBz9iRfu5MLB31BaoEPgHBWDBR8QctMxcnV9S0Ca1COxT0XVBXMY3z+bLDv3G26
	 W6o09v0zwG6k4+hq4LLit2lIq+rrq8M2Lq5wkksjqnQ9xvnwOiRxfPgyQr0ENkni4e
	 VI7RlmY/eITMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD53BC88E72
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178968783369.24686.14453476613216465189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9356bcd0a104f61f0d377dc55061874447f50ac545d21acd664509c5467c9b8
Date: Thu, 17 Sep 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789687833
