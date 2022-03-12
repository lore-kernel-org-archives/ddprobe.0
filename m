Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FAA3614F
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 21:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647122184;
	h=To:Subject:From:Message-Id:Date;
	bh=A3UtHfnKo67u8Vt6Y/Y4IcWSCqi2jTHqjbz0ribe0Nk=;
	b=QMKBCGES3/5ig16XZ8qB0Xbex//KNUOMnrsuHGGqqW6/26AmdYAPUalQX6us4i0g
	40k1z9fZE6nJCYc4+29N/5SZMma2cVelyfGvwnNJaNEHPF9uQJwlY+zeH1RBMunFYr8
	galcnDkMUDXKX8XYVBCAaKs/AoAzn7gEYLYW7atc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647122184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=A3UtHfnKo67u8Vt6Y/Y4IcWSCqi2jTHqjbz0ribe0Nk=;
	b=N9DGqkGpoVdONsM5yhPSMLIe7up84GalTIgXjgSu6XT1Dyo9KPL7XTpayDf1ntvU
	1F/0JXZMZfsfWNFqFQfezpMnTvwBAaf7yAeye9GqhZAUID9hjZMBd6chNz8a68aLC9J
	gcXYitCeoF5yqolMcy01+3yi9K9AMQL3KGgeJkOM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8021f9fe-b2673da8-45bc-4567-a7c4-0150681e1221-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cff32867f01f9fb1f4e448277fd34755318c88880c8220a42c85a895905ef9b8
Date: Sat, 12 Mar 2022 21:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647122184
