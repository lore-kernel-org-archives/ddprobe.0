Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332FF3074BA
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761650994; cv=none; b=kyilvV0lGLl2CaBP1DFmhGAlC1L4ZIzDwzGISp2pL1WdxJfZ2kRvukyVnqdJ4p77ZpwoVdNHRrNmppbEAuftAirGWRU9gFfarZDxFRgmEMVHUILmb20ExJwsEaccY5R3NNgsEaWy3m1d4QffjmDo+/YL9yDEDNN8+ZC+ol7Af9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761650994; c=relaxed/simple;
	bh=UpsuL21sL5B0niMu4eN39cl2rW/BH+a+Mp9DkEekjDo=;
	h=To:Subject:From:Message-Id:Date; b=qemiMoSgI45YpAYmIhdibc8SP4n8dGTsFVYx4e5Tua1hSVgaPjVvXEfR3WAFUZEUA8M+oIcKR0yfZJW4d/h5EbE1coCm/Qcj3m+kqhlJBZKT97/LtxEwmrzoL/x/ZFIFOSPXbNuSIkblDcNBi9gVDMPnnetfc6HVkS6Toy6/OoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hA22HKhl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hA22HKhl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A735CC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761650993;
	bh=UpsuL21sL5B0niMu4eN39cl2rW/BH+a+Mp9DkEekjDo=;
	h=To:Subject:From:Date:From;
	b=hA22HKhli5jIkzxNCRfCnYt6IZV5xMU5dZP7JCNKKn+Q1xrg4mwecauweC7C1cVHt
	 rUjqI5n2bTNCIIZxXE8+K+BWPy+UGMJfETYPfSQqv4rYGNFywgIrDVu0mxRw+uVHR0
	 WSajgidK5BrNeFlWMbq4lI1g/l+SY3A5es3zZYG8gnqd46pkLvS9ApcD/WbyUFw3ES
	 9n+9+HCBWUm9V9suw4YZ+iu48Rw1F5I9U7HqObvbNIhUVPQ2tBv68Zs5ej+Wrbzr3F
	 CrAZWHFU/nD/6zgXnF8yoFMAplCOKMonrsrevy2RfVM/8mCd6PlV1z98EqkI41JSvR
	 fpvqB5pItRkBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90679CCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176165099358.9096.4427696747405000268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86298ba4d0bd8c33c048d43405e4731803da9d841c31788c419e9dec0d727413
Date: Tue, 28 Oct 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761650993
