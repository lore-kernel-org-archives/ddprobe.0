Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDDDB7E
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 17:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652895419;
	h=To:Subject:From:Message-Id:Date;
	bh=zy0cLsJi0G/KG2obig7cuPWHiiWNH+FCr8Kkmty/BXo=;
	b=iAl0XXLkdePoCamEkcP+JFvuTvT2DoOIcRIIIFLoyKP/mQOwj9gSi6u+atdjlXPs
	Cpq8EDYNo+NYoghqP0PPRix3pcp6aSXCCoIyQoszWs/pyax6s5DYFhbbJTToPtCubtS
	/TPtFzs20GGd7KW0vT1K3HLR7jCBT9uoc0OP7NTo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652895419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zy0cLsJi0G/KG2obig7cuPWHiiWNH+FCr8Kkmty/BXo=;
	b=DDqyJj6lBMknyPiSh5QtDKCig71owvxgD8BuIHjfBQbN+byrYAfV4Lb9eIZOAyX2
	zNOxIa5QiVgd7Uk39BYyUIBtPMHQtYYzINnKr1mSyj5vccLoNdwmrGRfRc3jpndOkNb
	PP1kWXykObrOgDCXlkUpy5Dcrvb86sabTJ/tizss=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d83e8b92-bced7002-d54a-4ff9-bee6-f7f0184e3ca4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 711b9d5f549cb8b8ba1c43a9bcad89f4f03ffeff5903b0e19e168e084c0769fb
Date: Wed, 18 May 2022 17:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652895419
