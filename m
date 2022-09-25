Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3F694422
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 22:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AD7EC433C1
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664144453;
	bh=ffjIVnt3SjeKN4znWzsM3CW3RnX9GcxzcnkGhfq3QFU=;
	h=To:Subject:From:Date:From;
	b=tWv7IWFhfHGQExhYQ2gaEq4/Kc3QOQdU2fpyvFMEcuGThu1dxSMF92ejNklx1SCQp
	 q9fGr2hmdq2BP+gmJUG671znIhSv9gUSjfW1/PO/W+UHjLrwc5kRwTrtaIzmMVfd5h
	 Lw0Kf6GVQCFZV2XZEyJRGM0spq77UQ67rxwntz5rxcDewgogi33Jc7ndx+vziRDpwW
	 ByrOyyN1ktLD911vPrK5TYnS9BIvnZFnkH0MZghqedeeTOfj7Iz/K0dXJHhF+Jm+/P
	 wBDWnlZh8KvTISRPVq2hurcqx2qdUrv4qYhdxWkI0j8QiJh1+PYoJ7KRIGq9rN5JuL
	 /yEg0FJcyhlqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55025C04A95
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 22:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166414445332.16544.6121584719163925341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc4ab85af84ae34379c7003fa05103aa4be3d7227647b3139e8eb94df23cac4b
Date: Sun, 25 Sep 2022 22:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664144453
