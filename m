Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD70F7B
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 01:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649813098;
	h=To:Subject:From:Message-Id:Date;
	bh=3NuyFVwrxbQNFrl/RC0g1/wy+P5qs1T6axS1kyJJ37I=;
	b=Qtc19Osb0xSRrHMWbtYXRy8HM/2A2yZ8ZLX9n8gkygJ5DQvZNo/R1n7iDxl7ps71
	MHXP4oYBSCKeva8cLoJ9TIVeud93PnsaWS+t3673vWKczNzHQo+VR935N3UIy7tO1+6
	q76+dbqTfurtEExhxlexbept1cYX4SRnDpt8Taa4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649813098;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3NuyFVwrxbQNFrl/RC0g1/wy+P5qs1T6axS1kyJJ37I=;
	b=SyL4uIr8mYkrOaGO3JDWMwfsfUIR555NLYHTBb0FWRboWhKxV71JC5ossmjg0CRb
	imD8I7kU3SGKNSn75cuqxHPR518rGOd4WVS1jN1gvDA2OyNLAylaaxnTGA3t7O0+BgT
	xQLoDrLZ9fsPhDCBH7OZFzqQXwm5mCJED5bvw4SA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018020860f1b-683cc821-1968-40c2-9c7d-e607a2faf604-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8878440ac2a2d101d2c91cdf3ddef775d5b3af8c6a8ed99cdbcb0a80030392f9
Date: Wed, 13 Apr 2022 01:24:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649813098
