Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 466A71FB6
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 03:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644981384;
	h=To:Subject:From:Message-Id:Date;
	bh=j9RzqEmNs+DOEmXvftRX76CnKgYFHl92IzQd7afQ1yg=;
	b=QkLlSHWrnoJGwzTbVus9lcczOBLKU/FjqTNNJbJQ4EUe/ReYhOofGHsKnf/m/vP2
	xYIA9pZVEsiRx1StBHhy5g9SwaRCfLt+s3K3G2FOzrPzhhJkbPMVDLZ77SGMO4H+FMz
	G1ZIEF1Ov5BWcu24kmDlxU6OQ1EqeQVzXXDDsyZA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644981384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j9RzqEmNs+DOEmXvftRX76CnKgYFHl92IzQd7afQ1yg=;
	b=SSaW8JStW134RB4pmJDSHjX6SBbqdJ+Ago8eo1nCuk48/mNY60Ve32kQ6+sju9JL
	8qRqnhGAQT35n4Qtmi0Uvo1c8+DKxuPgrTXnIkOyCMUSinRCf/ZieuXDpgrhwTMl1eF
	Jt3tuEgFdTnKmBZXwAs8CGmUqJNx2su1dnm89d4g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0087f5f8-55da9046-0148-4f8d-987f-928648372449-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c8a02f69e6cf9b4b1b50b61ea1b4120815e38b2c7366457ac7df47326499b668
Date: Wed, 16 Feb 2022 03:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644981384
