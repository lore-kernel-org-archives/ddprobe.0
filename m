Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2649123C8
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 12:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652270699;
	h=To:Subject:From:Message-Id:Date;
	bh=lhUyaBu15QuUYREtd5EPZKFTUrgs55FF6u4TtU6/Z3A=;
	b=MyuEV8mhOSz/SuaU3HXNDSZvICcVuHwnN7EvtQ89tvPKVRs5vQ9Q9gz6972XB6Wh
	WFHYHKxzyxDhLYKgQLqF09nJMIA4p08xSrqdIlocWA3UKU0vwqppPY3EAjtaisJOEJN
	+UUBA8jR39/PtXJjvfVa/LFg1Otzb5vmp4t3g0bQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652270699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lhUyaBu15QuUYREtd5EPZKFTUrgs55FF6u4TtU6/Z3A=;
	b=AevbzbhTOJsuwxReP8NwzmnoXR0nUDgvf2ZhdfdacWPGNWy/qY7XTngU8cE4NF8a
	XeWZaoLCkiyjmX1jBZk3VWtei075ESinHVqwblOa+vYgzAoLJzSb26HDxoy/NFazbJL
	F3c55kiDS1ZSzIiq4Fv/DyjCGa2YW9mRWIjRCrVY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b302131f-ea66ed29-201e-4a5c-ad20-fd756ef0f53d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4eda70feaf94bebcd30c5b1bf9a64579b2081c522e76c861284421c9d4271cb2
Date: Wed, 11 May 2022 12:04:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652270699
