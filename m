Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 503BD7C
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 14:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646489784;
	h=To:Subject:From:Message-Id:Date;
	bh=bGQRSdDGQOPpNighphY7OaP0JyifOWfcvp70BKnSS/M=;
	b=W1U/1o39MtO4pz6Xo5yyxCu8Xj9ARHRAZrYsy9efHu1VYO1mNjVg8v12HHX1wSRG
	TDaeJsXAmpSzT6wtZrv/h/Wlkjm4IQ5ubwcsan2twc26z354OJoG7NplI7gD/H9BU+l
	PnGzsT/fDdwjrKiW1dUsdwt5V/852jPKTdpVOk64=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646489784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bGQRSdDGQOPpNighphY7OaP0JyifOWfcvp70BKnSS/M=;
	b=h10P1OHU7H9Lj0s1/bRoKuP9vyDNMfXluGZmCmu5JYs49BiukL27a0+XMzNVGW9T
	tWD2Nj18w/n1lYpEKeqOMpooS3ZiAJbQn5/NwZjLZOPvyMQ52ZtMCH76Lekq8BSZsaX
	+B7RN19ih31/pbLoQCwEsEL5RKmj/UK+fdiy5YdM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5a70517f-2bec5d1a-db5f-4302-a6d8-402b422a5d56-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f8c4e20fff1a1ca139d4fed72730d5d3841b2092205aa57934cd4f2cfe2c2680
Date: Sat, 5 Mar 2022 14:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646489784
