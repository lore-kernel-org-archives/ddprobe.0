Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10D6C3225
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 21:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649970778;
	h=To:Subject:From:Message-Id:Date;
	bh=q9w/LZUBx8kk42nf28o0NilhYdY+RO977d1u2YUVK2o=;
	b=chrEgXpjSk933H4yS0+C/dgH65v2HoiBfrHIZZpHmuHvji5edWnIKBhcYiL9Qcr2
	CyMuf7Uhp+ohTwlSjPF0382Hn1i0cBD4WEca+kvyk3qqwu5aqhd+FRRGjjAt19HKDJx
	Z2ilOaNFLSGM+Ez1MtV8ZAG9EudtBh/jtG/xhsmQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649970778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q9w/LZUBx8kk42nf28o0NilhYdY+RO977d1u2YUVK2o=;
	b=MqpkHUuSzAtyO+AvZR7GqjqDUpX7u+jXO2tMDz8qkacjOumoKLSJkzaGEuKtCQKe
	buvJE6pG6gF8B4h8EOZ7GMFaG7ZAU34D2BzOftnOH1bmNoweIhQWQfAd03GoHS1U1Se
	Q61lhfzBkWxm6aSL1ngrolEIr32RT/X0FdSj5Nno=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018029ec108d-52f2ed87-1a88-42ad-8b39-a6e1c2b2ebc1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 537125bba030b97ec1c954c34c2b47cfb68834f1d7fbfbe80d9b88b9c5de534b
Date: Thu, 14 Apr 2022 21:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649970778
