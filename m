Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 089737A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 01:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654910219;
	h=To:Subject:From:Message-Id:Date;
	bh=3hIPj2iLKaVknZSkIvLpnjYl/lFwmqv2lmj67qbW72g=;
	b=eO2giTLfKwbx0HTCvxcg5coXlzf1bIkKcKwrWe9mRJxcghlPAp1z79IlcGoRwfWR
	yOkcGmIc9vu+v/VB/zRiLcq650rosd9zXFvUEABHoM0kN8rcPbP/91V1AQDa1OrjZaG
	D7MvgGWGdhusGMOqxAIobzrr+kK52mzMi/BfyljU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654910219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3hIPj2iLKaVknZSkIvLpnjYl/lFwmqv2lmj67qbW72g=;
	b=i6FOBL7wa1pZth1wPzDq3GicFLGSMpXZzTy/7hDO234QDELRLYRrcFrY9geWg1gj
	r9yfFbgH6FWLKZ2cQTcOrJRIFJheHCYQL6LexdUV3rvSf0nBcKse4vgEE1leJ1/Filr
	QrnEcfKC44cV9tvZ8usN+nKMhFulKkrYbnVq1uiA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815055f44d-8648a093-fbb7-4bca-acec-1ac0f4dd4f36-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2b122ce375ea2b2bfbbf4e30b0ad1521d0acd8e6fa90279fc3b6945514e1ec22
Date: Sat, 11 Jun 2022 01:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654910219
