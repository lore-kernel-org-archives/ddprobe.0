Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253E8E555
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 19:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vE1xMi55"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 917E5C433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 19:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703963896;
	bh=Df+oTVH9qprsR/hj8RkHPmp+DxprzxdpWaCGLEAU9nY=;
	h=To:Subject:From:Date:From;
	b=vE1xMi55bm2H+GVVILeSfgO+2XuWZXuCuJy2SR3gTArOiN0gxdTbD88t+MDdKMxY3
	 CURD1YlO0hQDJM/+TvGjwkYjpAsRiuSG3rwR7QRhqkzvbEpbcBgwfhj0Rm13NqNSvM
	 nDq7hjTMTjqyTpEzOQVFC0LjPQz3F4Fnun/cF3ueY1YAaXHEKb7+VXBiRAHXX1+aV/
	 6/eYhVcxGEqliSS3rIN6uXhFUFJ8Ps+fA2jfmSWJ4EQWzcVOqHlwzdC2wLs7hOQ4it
	 qOAAETCtA4HYM6ZUUvPZAhbbnEY1ABv4wa8E/PiJH0ShohSwo/54CR40Ma3YBd0rjD
	 ydbtQvq/2a8vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 677B6C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 19:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170396389641.10833.5521464076174580478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1c311e1dda9c3783c461e3ad317da3839f35b24247c8d9149a6221c8ab195d7
Date: Sat, 30 Dec 2023 19:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703963896
