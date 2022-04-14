Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DABA117C8
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 11:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649935798;
	h=To:Subject:From:Message-Id:Date;
	bh=ecEQnSIvtLyEB9yuOQrR6iqXCLUKEWVEDJ9S0HBGrMk=;
	b=cmdJ5vE6nyDe1hqS/gqam35opeRN2LS+wWxFKeMzudHpHqN4DnddaFTkf2lP4Tld
	Ce64j3iQ/1W+AsC0VKBuCV5Mp5wRRdhmhXtaj+xkkgl2KK3QUM3GkVvvK4kTREQgox9
	WZ2T7FREVZZaEc5Pa5HpkJ9DSK5P6CyYMBc3QODg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649935798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ecEQnSIvtLyEB9yuOQrR6iqXCLUKEWVEDJ9S0HBGrMk=;
	b=Fw6sT7T+c5To0+vlsx7lI/2MUCPSPW1vxf1Rvel7O18GRX+Ev9Q7+Kr1dfDccJGS
	yzoxOS1ha+d4BGlvdj78mnQlSpsj15sG+NuP/Fzmh79pRrgg0209ABwf1Daj2yLJBfT
	uwgENBJQ8+NmCNhPOqAx/JFvi03YqQIkGY56S1dE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018027d64fe7-f919697c-7e38-462a-b82f-8afb83156e35-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 20bb982acc2204b15804362c9326ccdf2eecc4e49aca39a94ca23467a35dedfa
Date: Thu, 14 Apr 2022 11:29:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649935798
