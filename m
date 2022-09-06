Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C772629A5
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 21:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A3B2C433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 21:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662498653;
	bh=OB6GLXUAHKOanNduVOL/1Adn7NWp5YBPahw0xHOPrAs=;
	h=To:Subject:From:Date:From;
	b=a+8ukw+qmBccR/FlTXJPPaXNt2RWsZnJ8AxOdZznGY8JXUB6AQ96Ek9D9rjQsx7QO
	 vQ7kH0+mX19l6/LKumO6fS92UoswSuP8bDEmc2rQ55whdsVRnry36AwIbAMZPMn3vh
	 ZOMiVtU+/oW+MvL66ON2X68HFmW4305h7LfIFiqTt5UQLyA1shVs1y4dJwyqySQd7A
	 PoeEwqbEZhBDt1ZTTJoaDxIKMJ4pOtUmGsaiySuxDiaCdU4ECQsbf+w9if1W7ztW/4
	 ufX01OYirX/m/3ZLOU2X7okWZGBvxkVqa4Y01FPs2vIrP20jgEumw5S31SfMSmlQom
	 WOGzdW6YECNNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63C59C54EE9
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 21:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166249865339.7110.9660413896086258247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5804c02242ca9e8ee75747372795bf2b651fcf315406835003f393e835578f8b
Date: Tue, 06 Sep 2022 21:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662498653
