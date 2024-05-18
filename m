Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 517B0199B8
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 23:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716073943; cv=none; b=GV1F0x1owkQ+AKSNF5/RRYxPz4/dF8vT1G5J6PzmIva0Xw/YKPV+hRhsjTqqPgoTO4RGr8CKLk+Ywp9y8ls9WHwIxq/Gj9PBd8AortYAMm0FcSciZZU6SIIA8wv0KDIGjGUVSzLM3G2HSmz5sZLcngJOdtGWDSLlYMw9HMGoE14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716073943; c=relaxed/simple;
	bh=MO1DnZyVeXeaU14OWb+oGhUpx0DC6/wAkRrkR/afXhc=;
	h=To:Subject:From:Message-Id:Date; b=A7fHXwQcUmYTxgvpv+gKNn1oEUWkkbrcqCUs6tvtGaP8Q72sfH2trVGGk4QOXaD79PFN6auPNkhaN3Xd3mp4ldS+YLFiz/NUdMLtjCyOdBJJzXZPZBmGR76RGOr35vdI5J3MCcvicrc1vRcStbyZMLhDUnRYA0+Y/zxGW4fYDyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pQZRK8aL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pQZRK8aL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D588BC113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 23:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716073942;
	bh=MO1DnZyVeXeaU14OWb+oGhUpx0DC6/wAkRrkR/afXhc=;
	h=To:Subject:From:Date:From;
	b=pQZRK8aLdRrBTV+iPSGvkWBciT6BFPvBZVGXQTT26EwNTeKQ7VXyc+WG1VLzmUIAv
	 r9J1i56l2WSPPgo/JxoTdPc2IhGsLygz2wz0AFWM1jqfQlkk4ALODa+o7p9kWBxVvL
	 E8L2nyvB88zwDUAKoPEx92gO0mRHOGx5W+We6dbM/0fRY2qJZ4WICFjlwnUxe2ZWyR
	 4UJujeEdBKVVrvjxfCZBK0y0+AJxqqeo4akfgx9L+Yfsw5YJjLLq/EFmXfa6zvs+dO
	 cSfOoYNn5YS8cZCyZ55v55vg9gwmdPB1waVu/TNnlnrJQ+kauWd54TJ6aE8NSWgrYy
	 wZCrozPN+mXAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3FA7C25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 23:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171607394277.12748.9302825046995519848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43a6d09f831ecbc005e06c2972b669fd7b086b70e3c42efd07c35e944f4a212d
Date: Sat, 18 May 2024 23:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716073942
