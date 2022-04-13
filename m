Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF5C523BC
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 10:33:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649846038;
	h=To:Subject:From:Message-Id:Date;
	bh=iq0Z2KMCuFHhV9WpNdbFDVqZXUONeBRJ3EZPDUhcUHQ=;
	b=FzjxvYAdA/Wa883P3CPOu9OgvR6kaZZ9JAZL8gKNoMU3YoAAZDXQU9PaGGslFevN
	sbYqJ/Y8MBNzECdHbzUCXiQdWQqSV65HXnleBpwpNMYB3dFP3qtRkiBAsXmV7ZkHkPv
	nQJ1HAi40sdODnOLvruZLMhOu2OIYtGCazmMDUUY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649846038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iq0Z2KMCuFHhV9WpNdbFDVqZXUONeBRJ3EZPDUhcUHQ=;
	b=kI+CHjeLl+FWK0hUWhv4r7Krgf1HvpIzP4/V9p2CZpExr7DzVV9bpurWO90Ec6KS
	Uc2rItc1JAIb4TpE1Xj/+3dxLIFvxDxgmoO9oRHqVG4I8xREEg1Obalk34HAktI+5Nl
	4NdxiQ7abkOZZU15e1fF0NzshNO/iU7wK8kFuytQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180227caefc-16ca63c9-37f3-498b-9dd3-97f52c5eea06-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 41c2c2a788b0d66868927f6e57c1e315dadcb231c84f72cb98b93e2132377242
Date: Wed, 13 Apr 2022 10:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649846038
