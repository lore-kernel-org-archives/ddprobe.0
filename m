Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA1AEC6
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 11:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654255199;
	h=To:Subject:From:Message-Id:Date;
	bh=fJ9h+YHgiQmp2nwgnnXbABvx01b9V4Cjptkjxk6cqGA=;
	b=hGY/d1wR9EviEz38KfVZHGFiJQbt/INXndYuNLDIQ73tHWdHa+D7b9El+Q20AC5k
	aFUlypUpjdxo/uCHctb+DOzB7n5gH166yfJ1qKF1z7OiQZmrlQIuoM08CGLbK0XNG1a
	4wT02tzFGonixVDkFTsavUYUg1OOay/sAMmfmzDU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654255199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fJ9h+YHgiQmp2nwgnnXbABvx01b9V4Cjptkjxk6cqGA=;
	b=ewQJ4aupKEOH44V4wlErSk27H6vpxtyV5v+gLAFy4iCpIfz65NxUgUic6NJcSeLP
	/dzJsjNzO6f23v51DB1iD2s4De5kMv4rwsX0ilSINW1b4BtFgYKiZfLW39gkRdcMvYR
	NJiWkwXZpQI2OJRIhGNxRD4qGvjNNHE6UsTHoIos=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181294b2466-77a9f164-35df-4812-9e99-6150d3122cec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2c0af84f576bbc9fafded994297cba3f296de861612b27529ab3286c1451c17f
Date: Fri, 3 Jun 2022 11:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654255199
