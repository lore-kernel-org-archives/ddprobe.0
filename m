Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D620C1858
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 19:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78C32C433C1
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 19:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662836453;
	bh=47P5uCFeGRw56M3QXHV9fwckSojTmzpGiBj00ZyyNvU=;
	h=To:Subject:From:Date:From;
	b=lYtuVGN6shSRd92L0sofnxSF6ki88aNDVPcKagFxpc8R6wnb6TkDs5lGHmOC5A8Ct
	 RDtWF4v4qtrc5Hi2ZlmO2HM/z7llsTD6dMBMPxD7efV1uH3whY0OmF7gqRYkRHSPrK
	 qNGYqVsYHsYQpQZrjtnFn2/B0Vw4P2+XYuyYZLnRgE96oU+Yq/4p+fKp/mP8Z9svDQ
	 N4zNMabWM38Kg14bUqP90f2nJ1c7qZkg00LVQswtiWJsdCO06NWIJeWtUc3hDULuhb
	 ucUnsNcra4TgB/eq0IuJT/PYAd+YCmBWsjnbFhShWcsrSqcjPfHcYrWEU9OczUsakZ
	 3kEU/Ajq7Lp4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D6BAC6FA82
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 19:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166283645334.13117.9652604181532206583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4e9d345cb4ddc30bbb98d680fa261fb8ffddf549a1529f8eb5fb5040620c801
Date: Sat, 10 Sep 2022 19:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662836453
