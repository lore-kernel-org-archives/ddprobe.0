Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA703E8322
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 09:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779702754; cv=none; b=sD2yuKswgUVP7X+XhPcvv6yjWLmnu2k8+hZ4Po2469CAt66p7F90LUWA4OfKKDkoJOmS9bGtEldGUO1Gwysem7KfdCcZ/8BJ3b6ZPSbJu+GnBc9FkGGz9AapppOthBqGH2h1LP8oDDsjnowQfdmPeMbjMdEYO4DQqvSNlZdI+Vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779702754; c=relaxed/simple;
	bh=cBKKJq6Z2DwfvMrH5zxvogkpw0HvtjGDUQuxapo+CFg=;
	h=To:Subject:From:Message-Id:Date; b=CNPbvv2Zk6tlbV5pTwTLr8junHl+0i2UGUzPcYCN34cJP12YBYOND/eZN/6DGsOD6vuFzE4va/mkQREc2QeXFu0C/Acl/ORqXCD8qchUimu6CLuwElf69ezKCKGpSNdTaHthw5FTGQMT0Z+QNMo6HBvprk7ZJHOfOoVutj2RiIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L6G3O4kN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L6G3O4kN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CADC5C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 09:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779702753;
	bh=cBKKJq6Z2DwfvMrH5zxvogkpw0HvtjGDUQuxapo+CFg=;
	h=To:Subject:From:Date:From;
	b=L6G3O4kNmM6Tl4sRNFZCFxTbIsobCAbEWnw/ls/7O7mTR6B0CuJVO2z84Yrd5jdQu
	 h/AfwyuOxpUY3JY1giJniWMztQzH+Qocu4p8DAljkEj8LQf8Pg1yZ4x1BY+pPwN2N5
	 oBjIB3e+VLw7gRfJtP4GtgjK8Jht74z69sB0xr/zQhf1BysvcZlLiwDrrkd8iHxMq0
	 IETAqTfnKNPSihf+lOTAdfohchoOviMtggNabF2REM0RviWiEy0KRWUh6b9REKO9ZN
	 1UAmOF1M8owvjyayX97XVnUBu+3NCDF2AFJp9EgQ0oeC/JZO2z8tQmfod4jo/27Ar9
	 5JtMASL98+pJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D9ACD5BC8
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 09:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177970275369.25661.9017396905956697633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e93ed9d3d7d2910c9d1aa760a2291a50513cde760942eb8cfe6aeb3e7595211
Date: Mon, 25 May 2026 09:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779702753
