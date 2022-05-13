Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 628EC3D6A
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 16:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652457659;
	h=To:Subject:From:Message-Id:Date;
	bh=28o98KP0GAnk67/adn5tAHWCwtXltKnwm4RV1nezTq0=;
	b=hKmHAfVyQx6VDJe9V3YVNSgkC7NGk9O7ybOMJ/b89tm7clJaseaq/Hm51+7Aq0OQ
	SPDFMzHfMw7Ip1PxkjJ9XIHBIdKLWdOdV9Y6IhbAiIhiySaCGQeoVbZZexcpugpTMo/
	nWiYyIYnYpZOhsl50gXJ0zgAnpxQC2P3aW5VUc24=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652457659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=28o98KP0GAnk67/adn5tAHWCwtXltKnwm4RV1nezTq0=;
	b=MDacdqHUbmDo69U5hnXB5huQ5SeunVAufsCr0X9EXCniSdcTKkWzAs9ZXJg7IvgX
	dIcnKYLSjbpKpV0OL/4xJd8BJNotBW6Gxa5O+pl4BGtvaoa4fUT8vLi9ruqRPhK6EvD
	7As7wpowOsaSZKj3nNlVl0GNHDv7YKwLdeCy1Jo8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180be26dbcb-3088dd70-e2d8-479a-823e-c289efb00c51-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6d90af4979d24a5ddcb0c05cab78a3f57db470cfee42406135cf134e6fa0a7ee
Date: Fri, 13 May 2022 16:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652457659
