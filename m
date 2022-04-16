Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E762420F3
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 05:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650086878;
	h=To:Subject:From:Message-Id:Date;
	bh=FoezD0pw2lRfOVkTa5XdIqFjmV8qmkX2HZlDZZWDALk=;
	b=YHpL2k+dLUmgWhZxGooXqBVFAFBTrt0Hl4ry75E1evEcJbDTHHtvo560OuT0/Opy
	XqqYk9reAyympEzmZxgrZhehnNWDqmCOnb8HPLSPMO5n4y0SXurLoZEmVl/uxYgS3Px
	qO5FFMHWK1CR8ujvocewrSkuv/CIJNWn86GA4rIk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650086878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FoezD0pw2lRfOVkTa5XdIqFjmV8qmkX2HZlDZZWDALk=;
	b=IvhzpyvBWwBFRGvTncgHUgYrYrpdSCL+nvrKR2lLH219b2MJk8r1TDd+pKNNYgo2
	UKesomACD310P+B2OT0Z1h9r9a9HlNPnZlZucEpe5Yyz1y86c5Rjb4XM74Y/+Aqp2m8
	jIki7oPOLXgyRprS6v2GTBBYxotKZaaEEFAIPQD8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018030d79c3d-2762f605-4e2c-4def-aded-b671bc2c6029-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 425e1b4e5bdd49e0e7d69014a82206bb1786979c9a53a6be9549085bcaf5e07f
Date: Sat, 16 Apr 2022 05:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650086878
