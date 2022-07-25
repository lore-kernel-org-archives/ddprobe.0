Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55CC7372
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 05:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658726212;
	h=To:Subject:From:Message-Id:Date;
	bh=nU2MqhJ4mJyHKc6RP0+t6vckACNY0AodSqALHfkHi9c=;
	b=QPpWJmmDrfjQlKL2Ohf3UGDmO2036MSHlCgzFGB7AMcS4Fyb7kSeQCcczWH5t7dj
	5yH4RCjkXEPrsQDzTY9WLbnrPaGDWFkb4PUxd36H2+XGIP9QTsIda/ulaPcw4d9AxrS
	zV9wxmXFb8gB1aZ0Z5gEmTG8w4OQiJdBBkl8Pu8w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658726212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nU2MqhJ4mJyHKc6RP0+t6vckACNY0AodSqALHfkHi9c=;
	b=KuIBpF5rYQk1ZLiUTS1e+sg0JTMxyW7d9zfk6Y3sqN7vzG9LLNndWNhbvk3Teetx
	hD4/0p+dB/n+NH03hIg2vjKKlMOmCw3IYVkV+iLC5my+aL6Ycdkq7/wwNlINObAXb5g
	2EMwxxbapjPzZzs5ilN1VryTyJ+qVKLY9AS64Yf8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018233c962f5-1c093fb0-ab97-4eee-ad44-90f7459ae1d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2869960ee6d6a0d83a0c1e97c4adb76a907cbc0d640b264d2704ca8affac682f
Date: Mon, 25 Jul 2022 05:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658726212
