Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C34A815C90
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 20:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74E6BC433D7
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 20:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669147854;
	bh=24Rgy8BW6QbIExi6UuNM2oX03pGKSBDRj8o9V5cyvwk=;
	h=To:Subject:From:Date:From;
	b=Ehx7eL+cTQ48gAdkqMNEkVrTeRRqPCyxeUtC/JD0mtO69GB9uIk6mjtTXrdej0zMl
	 CxM7r7KXo0PdmDT/9kLiOLgx0V66TJXWgzZxAwB4yOc3hGajAbYbz1Q15BVF04PQWi
	 kogwlMjys4rJJdfQ+FWZ3gCIYeotrf5h1m6Zp5Z9DZjndFoutbevoFpMLcuivnCDgx
	 uZoahpIfuAEztC1jaCFUTJiux6+J9hVRE2X+7WWiL0cgOuIS5Vl4yYeRVo2iycHK3/
	 Qlk6MaucTHZ+pJn4IHLvX78W0AHmT5EC5mNyGfNaa2TF0RpXAoMiY8grJzyrNfpvx8
	 hZD2q1/jxLYCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C55EC433FE
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 20:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166914785436.7858.13643638094307525472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daa2653689cbe2d117d5581ebc241973a23222ad3c8a00cfa2a84d246a7d6afd
Date: Tue, 22 Nov 2022 20:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669147854
