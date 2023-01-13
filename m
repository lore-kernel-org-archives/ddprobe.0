Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D53EE628
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 03:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CF7FC433D2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 03:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673578887;
	bh=7xN3YWxuoiFab2Q9T/zbSBaK47xt8y/dqFbWKK50yN8=;
	h=To:Subject:From:Date:From;
	b=cy4RVzoClgoJ0xQ1SvMPSeoOjouRcA478EAbLhsYyMu/tWmS9OMG3mIdCggtpuP8l
	 sP7B1lV/DV3NPr02DKeEPQT8750ouEuLeDbwlpBS9VyIlTPwPNn2igpsUHxT+LvunQ
	 DRczEN7orY3FU6sTYT8HQil0s8jyJCZGy79eAn8MjnBebNjNqykZyNAVXHvGZvU2Op
	 RpaoMbvN0eIOLVEIueXuH11TvgfOZzFv0PpTVrfoFiVy0JmKu3T9DMw/HuYDN/oDow
	 7NUufXm0wLisS++hW2qG6EeIEzoV5fqnFlnsAJ4LokPqZyHJ97xUpxu0bq7HgrEAFK
	 UoUUEtXfnKnEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60AA3C54EBD
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 03:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167357888738.18141.6185695328409023714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcf0ee1a105f3f4360548f666de28619046b029d6b836d2c3dd0a82900e444b0
Date: Fri, 13 Jan 2023 03:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673578887
