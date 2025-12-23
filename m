Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24CBE2B2D7
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766517234; cv=none; b=M/xcfAyzOq52wWpToWM6C3r674BVL8nm8ULuN+XMJv4QKXs6FTw0HfQLU/9ricyXhehIN0d3vvKMfaIBr+HNFGrNBKhxfcDQTpEO5QJVii/dtODiuW6arKonRhMwXK4WmCHg6S3uHokXScb1dHBy2feOyCFc+ltdyMwtVz+fFWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766517234; c=relaxed/simple;
	bh=WH/Bx5pObteq1I6uevsO/gML6qdWbXqjN2Gun+REQJg=;
	h=To:Subject:From:Message-Id:Date; b=TnlKw3j5gfq8RgBXGV1COxTLuwS9shVr9restYLUr1arJHO7Njwdt+AI8rY2b0BEmzCk72KC009rAG/xCiuV9b7U5vz5xSJbmEOKsxGJaOpDQwlqL/Su9CtzryLi/Zrz8ofFtwH5l7gQu7I5D9Xdpj4TuL9GeiJ/u4mWXqfCIOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OEMYCPvt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OEMYCPvt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BA0C113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766517233;
	bh=WH/Bx5pObteq1I6uevsO/gML6qdWbXqjN2Gun+REQJg=;
	h=To:Subject:From:Date:From;
	b=OEMYCPvtA4Mld1i/l2x4ngNbzGnG/7rj3GGFKIaXFTUQAjRWTn8fRww1eD6OvmCNm
	 6n/Uefx4TZ/UAkD10UxtyX7wNuIwJ0kxT1xld5C6KIAFpMaqW6YTgyWvUc8SncAf0V
	 wC9dmSnEBClDMre71gQx27oB6b5b6OztzHFDyAjzxZ5hA8SX0h3qqCyJzPl3SNau18
	 BihPKUUUOU3b6mgphIU91NXHh1OrJUiuouaOr2zhzVMPmDCrYQHiy7ZUyI0Dymd5K0
	 zZAxpA9ipq1ldGXNt4Wg7rqxdhIst8gf7FAuF+pZ77D/w46S4nQqKWfIod/n1eMiQU
	 yyiu85yybimbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93873E6FE28
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176651723359.17507.17891550434076811098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 324e032284888c193af8df1618e6260e6c0306ad4604d47b0baaa3d157b4435d
Date: Tue, 23 Dec 2025 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766517233
