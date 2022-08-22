Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FDA07F
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661156452;
	h=To:Subject:From:Message-Id:Date;
	bh=NvJ3rjdZX+XC7ywL+K3uDLvvobxRGQgxfXX0C3tq8AY=;
	b=BeB+ZGFy95g/ss57Xr/+3cJmBCdyom8UIVEqP9TvRy1bRT2sGYLZeQy8mLuoLIss
	NT6uM1ueS1EfWVU6JSiU+ubsuHMvTOq/xqzvaMFkmXfSdfXbfX4OuEIU1CwY2XIz109
	F4XKiqdCEfYl6WTJgZIsr6xEd6UW1o3Sq0RLGZD0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661156452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NvJ3rjdZX+XC7ywL+K3uDLvvobxRGQgxfXX0C3tq8AY=;
	b=YrCKpFUPDGzxwkGinlD+12ZLcEmYlJOJpOeRAbz12CF1O9V3QJyNvucz+EcMqvxe
	M5K1LYsQ6Or9FW65WVzxYctB4CKV0smfMF5Eeo4107eCDYCPD/lHuB+TQheKIx0rjRr
	nLRJByrrxHwCYNjIVbgYhsyxSaf2sBXTewr2Ki7E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c4a3e8a3-22bbe05a-9431-4ffe-a5bf-ff49a950b94e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 629163dcf1181916f3a8db0cce3cb7ada2d6690d3971158becbbb2a11745947c
Date: Mon, 22 Aug 2022 08:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661156452
