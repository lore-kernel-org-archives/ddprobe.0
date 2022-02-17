Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 787EB3B35
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 05:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645076184;
	h=To:Subject:From:Message-Id:Date;
	bh=AO4EBZKo+iWQgRrEzSYKXmNLPJRq2ir7McvbdTJ/AYQ=;
	b=b0il041KRU7vBQuFtzuaWHGz/54Rtri+J5w5KNOJwbxK/FcQZePKlB1yaFd5wnaS
	eTye0JqrxqhkO3x80YHsJ0/fQ8CCUpgIT/QqyS7Lwxr/eIg7X0auQrLOA0z7NiLKLa3
	nbFdVKcRpVvEEulPB2I7kXDbNzjXCheRzFVJoBn0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645076184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AO4EBZKo+iWQgRrEzSYKXmNLPJRq2ir7McvbdTJ/AYQ=;
	b=Flmdw6vApnqqSh56seSoe6SYIJY/IwA+Rzez6TnMKuXx1u0px01Pk0ZS6gywY2/M
	cSV8P7ymS8exTEeyK9pzz7IZulflBlyQRNa5mfHeforRCRcjsa2MGa8oKsnbtdg8YB8
	XN9HHN+e1RybPrVXN6Hk8ywKf4Mhzor+QfuhjkE8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f062e7e98-b98936ee-b773-4c97-9107-d42791379385-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 80c9e4e0fbc9ece70cbf7d483f9d1e8573379b92c3f04673186ee14329fe363c
Date: Thu, 17 Feb 2022 05:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645076184
