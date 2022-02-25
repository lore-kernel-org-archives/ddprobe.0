Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BF5B10EF
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 02:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645755684;
	h=To:Subject:From:Message-Id:Date;
	bh=iOEGHAKvq0wbObKUbA2alKZIkMRFXtp4X+6Nwaqix3I=;
	b=VZjlLbdj9a10+Yq6ewl10V2aejsgJG7ayYrQCY8Wtuinhzdsk1SOjpRsJhuwgeah
	f7kWhC+ZdKE77L/zqAj8xRumCzeROKfPQjdfRSRi2TCbZSNlgf2fgUHX7iMlDEOgfE0
	OMz7Pfy1SfcziMAdSX4gRs54GDhL3Ha4q4gxNyFw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645755684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iOEGHAKvq0wbObKUbA2alKZIkMRFXtp4X+6Nwaqix3I=;
	b=MQzrwCt8TybY++FlEQv0W/Id+NPvObgwX3yblGJjz8+F511OOenOViHDDHOx2UC2
	QiWHT2dG3LAm3saOCWWw8Cg1GY4jm95Qtpoqomud3YqcI4Xv6YpVI2/iTAnTRocgl3R
	pGWVX0nemfzQ6gh4GgCNQN6dco41JvVgLKZIX8X4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2eaed7a7-e91ac4ef-71fd-40f6-8f88-b8eedee15861-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e828c11710e645ba131fe3b93a69d88cac8018edd5feb6acea9839112446ee52
Date: Fri, 25 Feb 2022 02:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645755684
