Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B09BBA53
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 08:29:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE178C433C8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 08:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686904148;
	bh=yH33Z5g+zkKPk/V/taVRK6VvZntz3cvnDwaLoiZW2dw=;
	h=To:Subject:From:Date:From;
	b=ojMBqV/u1586rJ8lCWXi4J/PGdQUPURXOBLkCssr9UJGgDLm20ITCG+2csUOmzEwm
	 cFHW+P5Xbd4M3/6fV3c1elV8+EslfPiJQzBnm4/hVxFIxBgy/Y5L0FMbInNgXOmsKL
	 YC5F0/LGBOuqk3o+fMYpz/aKVHOsQzR6RLjOAkZtf+gCo+RgNhxR4rHcq/LGemTn71
	 lSZblOilHxsaGdFf30f1Ge//louY6RfOw9zzYQ2ztpwps9meeHlgalO1CxjnBWvoMQ
	 zKP7mAAiaZ9Uh61au1Ac/yZpHWKcJ24iJxAhiSEjrcBQSu/qjv1i7qwqdg5/zeKDVX
	 R1YO2GXw0HhDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6631EB64D8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 08:29:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168690414873.20581.10623954999876702175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a452b27d7194233c26f4654b9dd959eb74f4adfee7e9ee910111c2eb8a939fe4
Date: Fri, 16 Jun 2023 08:29:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686904148
