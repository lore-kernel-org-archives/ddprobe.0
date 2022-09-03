Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3B047D89
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 20:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74556C433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 20:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662238253;
	bh=2EZxJHoLo1bg4HjuB1WshybUbjI6mS4vMhSyoRNRONA=;
	h=To:Subject:From:Date:From;
	b=DFmqZmrWm/kh8oGi/AayU6MxCPlrmFyP5TS+ZfV3kuaap4SN1WNeXuzzbsYlRoYjT
	 4kotfcL8DJL9gEqUZ/GQ6pR+imnub9iq8PO93yiDSQRmALQIpMWBb1ntSvE0APhjxP
	 TCi2ueF5ANToLEQwj1/KM57PzmIAVWPv2OktHX6HCyJ1AZ0shsjNTARJBF1hddoNuh
	 R2vQMkCg6inpvMI+WGtTtVm4a1RWYyqjiWC9Ko1MKOMk0h1iLNoQbyd2zSFvKAFzHg
	 pdCs3m8FeV6+97XUwcb0NOd6WIny9MGIKKnJ0i74BFbzJ21R9lYcnR+ayq1Yx7SZXc
	 QPjzdybDuk0RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53BF5ECAAD4
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 20:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166223825332.6437.7310119322351497538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0167aa00b02ab07a52e6543623a228495fe7da998bfee0b3c723cb85799b9f98
Date: Sat, 03 Sep 2022 20:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662238253
