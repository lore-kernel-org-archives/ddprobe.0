Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 145217B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 01:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655601779;
	h=To:Subject:From:Message-Id:Date;
	bh=kb7I5HPIZ1C4+GNQb5QT6fvO2ktT7nTHQ+DNPpmxCMs=;
	b=HkIqQ/6LyNnx152pz7jra0ORHJL5aPuFf5t+l90WOXovouBhg0ljEzClRXxbq2qQ
	pmFyFlUulChxOqvuKv2YIO55ZKbGRcszVljBpmPXBLhg9C6clq8C/HYqVrJgz/a65jw
	V9kwJbcfP5vQGt6aIooLq9qkXQpreX7kGdwUXg84=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655601779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kb7I5HPIZ1C4+GNQb5QT6fvO2ktT7nTHQ+DNPpmxCMs=;
	b=EADOmhcu/D+qATQOvEvWZgrRCWMBu0x653e3icgEZI8ZadoJZCShq8+11iqiT7o6
	Yt4JWC9nMCdGMvPoAivAMbmegVWb62OG6RnUR4J045JqSl6YTOFkyvNsXZ4MqJxBbfN
	pAAZyPEqyMtR/DU3/3kbxMGnfkYl2YgLbtwjrmNE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181798e524c-c8effefe-90c0-4493-a77a-580e025a1a06-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b8272bfb676613a55296e92655a61f76826ce3aa3a814a88cb25a71deadf8ec0
Date: Sun, 19 Jun 2022 01:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655601779
