Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F40D2F0C48
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 06:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766472834; cv=none; b=nHXoJejGWmg0wLUvOiZzYq4r127aYDAOE06Ea9QOIeElIbvchQY/2geLEOLGgcpwd77NvDTgA6vBxe75OjC/2iLyVFAJ6vPvT9MzAkNw5ke//SHIGk1F/cuzKtLEMZ6wW6xwtdN9oucr1vZH25ibyG1R85q9d6mtgOpJyCevPKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766472834; c=relaxed/simple;
	bh=Zyt2gVMn7DsIpHBKzSu/Pp/akrI71k4eg+2Dwcke4Og=;
	h=To:Subject:From:Message-Id:Date; b=IE+qJVkcubyrbPoDUD3q93Z/xcD75afvDUpv+IrauH1cQTYatnzsd2GmqBtZtiqivVh7oP21fn7Ni84YV1fBCA4gjhb9EorYQbCoJEVV18RKTBFJQkU8tsyobEXda8Hbiay7JWqfNqnEhfHXvArCWIJemdFiVzTJqi5mI5D3kgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eady481X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eady481X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22E9C113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766472833;
	bh=Zyt2gVMn7DsIpHBKzSu/Pp/akrI71k4eg+2Dwcke4Og=;
	h=To:Subject:From:Date:From;
	b=Eady481XAVL0YYlkznf7Oy5NftHDRM+/kNfnELyPUjmVhV1RXgL6NpPd9vZF8cGAN
	 HoF9SZXOZmm9r1+7PHDRqC+L5OU4d9SGOjgO3PnIjy0VkG+Dpw/8UICb13ybsN5608
	 iq0iOfrwO0Xvzyv4rTEHSgLFAx/6EK/vo1InkgWhIjyi7CHP4i7A3pDIjbGTnSD8yR
	 O4zFcD1dX0DGpQpRszTgh9RFaIvAWXgAOr/dGLY60T3VyBt9BAKORl+D3No7GoV8Kw
	 JvKFOySMsRyZWrm+JgW6jXLjfrppD4Lzu0tyQJUx80rddj6jz8PqLEPeVYUKU49sFI
	 4u1KCASNf/VRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AD7E6B25F
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176647283357.16156.8168386955992628715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d42af0243895e5f188de24b5e576f06d01d7696732b9069e23a893247e0d2bf
Date: Tue, 23 Dec 2025 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766472833
