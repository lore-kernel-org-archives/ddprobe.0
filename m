Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D13CD7E
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 16:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650905098;
	h=To:Subject:From:Message-Id:Date;
	bh=Z5SBX1myyjznIFgYdinwKSGPOJ7iOo1F9QhM3M73iiA=;
	b=lp3tALvNJLqMG+NC1VXHY79MfSJJTAS518bufsWtBRohyRvV6MhSO+vQdJD3Os8v
	nHL7Axhxjfhn9rLWXKxbEhjf0y4KIfQ/LahfRTuooyVgoDm/nXOJUi2xTh1tV9hYbn1
	DoSsqHsYFZaObGE6ugNhIMdTCkIqhQ55+Q+DyooY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650905098;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Z5SBX1myyjznIFgYdinwKSGPOJ7iOo1F9QhM3M73iiA=;
	b=cy3+um7Vp2TC4I44fnrROIFY8TZ9CC5cxY+kLBWu2z8mEOKyCEp9K5lYcjaEKmU1
	XM+LshugCfvDj3M8UgAIW56CbwWZJ+yERoZZ7Iy+WMVTu8IMHKo4D9WJHeg4wctHGHE
	Tsv6f1uQDDk5PR6j/+VGqoT8UuOOjWBD8Oce1txA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180619ca814-1b8e5a12-2d92-41af-9c13-02b8f296e452-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 49381890755f2845dff35681c020c1485c3292824fe18a68307f73703bf5feb8
Date: Mon, 25 Apr 2022 16:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650905098
