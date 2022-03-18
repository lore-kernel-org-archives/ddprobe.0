Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D77417A
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 05:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647579685;
	h=To:Subject:From:Message-Id:Date;
	bh=butN9ZB6O86qf0MCuwoOaZq1aqBXUoF+7YYWAR+VrLw=;
	b=WJGfiGlEIWgIpBBG7dD8deceRSDSHAVnXn2nt62jjk8+OBVCDiFVyKRmmt4Cehtl
	xdpv4u+H6iqEEmerCkJB3GKLFU4xueWG5knbi9YMD1cne/N+v9rVEjqTOK02y8u2nsZ
	Ls+bZ3UtNgzsTblU17F3jNHq3LBESoJsbOY4EGug=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647579685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=butN9ZB6O86qf0MCuwoOaZq1aqBXUoF+7YYWAR+VrLw=;
	b=B9xFzVSLcfUrkGFzugvRQ8tU7kqva6Cn4p0OZmoLVGr2vQAXsz/aitxbHSuP7ibf
	u73YyO0WAWWGwZWTFtEIFTC2L2FlKSy4S3FlHpiPTjwyO2U29ltixzsX5lvdGwWRh8A
	yrBjHsaVggZOcol3kF2EpWSwSy1cnB6J0VnjLO9Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9b66dfaf-c2d01f28-3e7e-4876-85b0-0f08d201e4b8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c9c512b2ac1818ff089ed84f0ee8c6e451a10a43b45a018c0d07c75427e46614
Date: Fri, 18 Mar 2022 05:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647579684
