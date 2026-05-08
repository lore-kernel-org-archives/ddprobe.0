Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D98CA45
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 18:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778266054; cv=none; b=e2gBRhbNa6sfTUh9gpx8QvIR+TZgKxm61aNECJA8w4729ArWVM5Ktpiw/pbDSrbSh839za3fj0R1x0tdh7wKsl855rmXMujCcFYAGGhpziaq2/3eiGYeqzHV9pFkLthVD2YCsTzPdDrbkNICawfPHMeU5T7W0FJqGEh7b0aJ188=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778266054; c=relaxed/simple;
	bh=2KEjWCbgu5nhoYUMFS+SYg9MAbjcJl154cbVwQwkA8I=;
	h=To:Subject:From:Message-Id:Date; b=gIJ1w0r/4OmzCowQFU+akI5abqoZybJFXCcNEkDmyT8U05lSti4NbFY84p7JB7PbXJxbIvWU1mc8yPX6tZk1sK+1WWnOuEXrudFh/ADCGG4uwMf/1WIkYtn056e7IZgMz0HUu1mbnoRgSXl/6A8DQD2RQfHpRwBim2ojvAsPg9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f5z0lmLa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f5z0lmLa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC9C1C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 18:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778266053;
	bh=2KEjWCbgu5nhoYUMFS+SYg9MAbjcJl154cbVwQwkA8I=;
	h=To:Subject:From:Date:From;
	b=f5z0lmLaopjK2DSvNgfWEUV8Bohs4aUAeliLT3xwIoVNbyb4CFkEJkW6uwxmMkbKk
	 i2+aDDZlhuLFAxbCnLbMCAEb5wajBAi03EjdpXJjONT4EGiQzhhmakE15Uyf/uTGsp
	 5jc6QXL+LwtO0Kfz4d/sV7oFZqXSzw2X85aqL2CjLQQ7Q7zNmjaEybcX8E1+g0nzUY
	 CNvx7Zjf60yoHoBu2YkV7QTBzTEOIqJVKaoPh2gXyRbVQroPzWilWf98MD7SUd2BKQ
	 9mF3yatTJAra1BwD4/hxB/J5BQKRcjIJjAGCmCgMI1EI3+mfU/VIGalCJnt0Jg/VSF
	 tG55N+5EVNykw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC9CCD3445
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 18:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177826605368.11503.1802643369213382440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae83c4b73d812c98feb3b938dab1a093d640d18ac348616d44da67ca4d3db973
Date: Fri, 08 May 2026 18:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778266053
