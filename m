Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15EA42F3603
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757631594; cv=none; b=HN55R7ObShhpuN/EwwmqStKLzc5Q/xn44iqgkOq81+wHjpyf3M5nraT861SWa5XRhuV6ubcPm5CFUGMHuoVGEq8vombH8gxBqzpIG7HyDmI5VXORaoTn4KTqQG1k7jFxsun8g/MpQeWr7Z0s/sIH/bTcTYFfqk4w5G67MLIOoMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757631594; c=relaxed/simple;
	bh=Mz+p1l8Yw3SnhzbnQVRmn2XQphrhDSv49/WVDVA4COI=;
	h=To:Subject:From:Message-Id:Date; b=auLPeg1w7jsK2B51x5OfzaAHhe0McJeaDUtvb88EWFuniJcJsxK/K9NW/OL1CUkUdY49UB857pDmJkxSj1ytX7KaT2/fEjIopZCYhLQ44L4xUg7cfwoBihwFmQfruNEBQRKRO+PrkDp2XGlMBi3+tvVtJk9jUfvnix318m2Pce4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U2vdaqZ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U2vdaqZ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5E6C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757631593;
	bh=Mz+p1l8Yw3SnhzbnQVRmn2XQphrhDSv49/WVDVA4COI=;
	h=To:Subject:From:Date:From;
	b=U2vdaqZ83ot2pcqGyD4FUTUDYXtEBXQLmxHuY9eq8R8h1TvSts0qEFvt54cwYUmYU
	 Da25aKPNPlf43ij5iZBo78nCEFYv4cJNIV1jkucRT7wLdOIGq21tuZhs8yqS88ZYRw
	 HyjRDyp1RkbR1l44v5maB1vAJDm1s/+PVh2VtlFIH28BpckBqMDFP7eREgC4Fsoq4i
	 wuYvs4SzLp4gG2OHnncCoaV2yJUDhEw8Hxw1QgPjh9qnKmxyE92XN3MXgvSPIHMD3n
	 7+yGreusuzqdpUyhwvkzdAGi1nnnOAR/wPwUx//7ne2NH3zTiw5wTvgTt7AiM8sxbz
	 zVC/EOSX+XSGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4DDCAC587
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175763159357.9424.10101978346825822008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c53bd59fffefc35c5f94e78df377c760b2762d525acfd59e64603fd1b10cffe4
Date: Thu, 11 Sep 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757631593
