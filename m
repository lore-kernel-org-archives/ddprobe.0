Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97DB67A
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 02:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647053484;
	h=To:Subject:From:Message-Id:Date;
	bh=JfHxobUGdgAPGmE6wSop4HLUvI013KPy/JshaNCcHoc=;
	b=f0T1Zk1OEp7pwyY/xEOjBA6Hhh3odwO6BSNzdBYZNTVamxq6Z98zqvFDoG6q8W2t
	hpj04SNzR8AoTpFcTQl8PRQSGrrn1DdsTQEPmJmqedM5WKTzvmKlXNcnrOCXqI7pKQ9
	gGKtIDD3+py/bluw9VenikVq6MdRYN+nxfe6Sqk4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647053484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JfHxobUGdgAPGmE6wSop4HLUvI013KPy/JshaNCcHoc=;
	b=RL5e30likseFG5DLxL1ddTo2PLEsUu6XH1bCyKzEoRbKDdI4TPGr3Sm9kzan1C//
	N4oNP8yOD1I0sgdyheGNNocj6nZ96jaHkZneLcpQR76gukhXv26N64DnUYHeHJs9wCP
	cEkhQxAHbzhGHqMTTDUOEZmz+vVG30PYHx5pzCHI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7c09b2d7-09cd5c1b-c242-4e4b-a047-b5bda6ec5e8e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d1ab06d031f38e70f4734b53e1a10b94f3b85d41d40e13e5a022b5496d25d9c6
Date: Sat, 12 Mar 2022 02:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647053484
