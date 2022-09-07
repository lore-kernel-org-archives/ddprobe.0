Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C82385C81
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 13:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78682C433B5
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 13:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662557453;
	bh=EIrzxr/YJImGGdt4dA0ZR/zp5mpzRk4KeXOHD5u5ENY=;
	h=To:Subject:From:Date:From;
	b=uThNyHO3Uu7vrYfcngZ74BxtBxXwZmEQKkZFVfO22nB2fl0rDcZlkQeVv+MnekBWY
	 52lnsgYxtcQ8m2UlRt+crTB2hHEg19JSOB4xDloX5TkOriMzK0AAfi+rl/dFttPaBp
	 zI2UTKXT2sY+oSpEk/84IFVu/kUl+s1uyFgKIOQkx/wUp1KzTfwDrK6nxeZ4V4oooX
	 bNhgB6MvVsXOEDbaJD/T6XVwPPW6UyCs+w2u8TpyJ82tcp8mVLCPwITbHccsfzIzEB
	 pUi0VgSPYmDZl/r3eVQXoAAdaJi+Ni/SkKqFkx7rBmSTp34BCJUOLaFhSGN2X/5oLm
	 zoCeUq1ZJR95g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D4EAC38145
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 13:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166255745337.7262.7810050340679189939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f571b37cadf939c10c586fb6973e825c5d4c3a73712c5e94f3992a5111deae6
Date: Wed, 07 Sep 2022 13:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662557453
