Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A05FE10EF
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 02:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645755985;
	h=To:Subject:From:Message-Id:Date;
	bh=uYazMnZUdnBqQcpsevKrYcdf3VAt7Iy3qdcL5xD99Ic=;
	b=EDxSbOlgEhcdNQ21D9GeAdoQWwpKlMJbwdfqoqJSaK5X7Hr2nFPoR459snGvSHfL
	qYuwgcF5nRtrZB4411iNWMUrqGw7T6QU50hrPk2AD78JesgOGkJpiH03WLc/Rud2+ds
	HJBQ26SP+/Ytl6LiSphuLOKYYdrPCeCwG6eOR93c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645755985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uYazMnZUdnBqQcpsevKrYcdf3VAt7Iy3qdcL5xD99Ic=;
	b=W6Th+95sz0b/tFIKqFoUDRD+gWOqwbZraTCtiM3Ou0bI+1lcj0wErcO4E1XE14YL
	zZZBUy3Gd6N3UHTDYXee5aD6+Eo/z8BZ9OdUJuflSos4aSlM5V36vSut1X4tqM7HT1N
	V85nOdbQ1jUCBKU57pInkHmhz2m5bAO5S2A0CfiM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2eb36b60-d1a6d244-d8ad-4f6c-af6b-b33c205e2451-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a754a5cb17a7f32e255e38b0d3ec04adecb0e15804484693290091e4a1d41de3
Date: Fri, 25 Feb 2022 02:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645755984
