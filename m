Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC6A728F2
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 15:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AEB3C433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 15:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670079654;
	bh=xma+CH+XHa30D2Dx9r3k38dk0d+wk1U54m1odn8ZyIY=;
	h=To:Subject:From:Date:From;
	b=oX3vdPsjyTs7ajlUVFyjNC93x4TbhCm5O+lZI8sh0RoTuKLWrPJHo2+f/osz1cL4v
	 ss2GLY6Vyn0hCZhOcdTU8SEruLHrRKM3ghBuWtcfxCg8i9R+7haAgsAxAUN59oqYJ6
	 DR6tC3Uo1aBVPZa70fbzB+wktZYP3/bNFnXgdak5Nf5jEzSHY3CSJXAhAliTSZ3Q/p
	 1H+Dbl4xLQ0kAqFW2qqrKL6I0X/rdwu/6EJuj51SvG3/MlOxP5GD8QRi0xDMwSTpzl
	 w3SDqbXbleXaxLVIWdEdnPOEnR1btw86sDRG39A8+MPtwnx2AORuFiYChT0MhrDFJo
	 H4jWFT6MLAPaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F43EC352A1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 15:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167007965431.23818.17849146214712700480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85195ea275585484610bdf0f4b294677e7da58fe18fa24afaf0f6a59df06b5ca
Date: Sat, 03 Dec 2022 15:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670079654
