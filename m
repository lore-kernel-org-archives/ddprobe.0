Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B838187C
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 13:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645016784;
	h=To:Subject:From:Message-Id:Date;
	bh=8MC8lutj+UhS0AG7Jfii1ynj6Yz5VJjPlqyleHB5nVk=;
	b=dEU26Old0hTHbJkDesgNzr3RjvzN8+T5iY6MAK6h733lEYvC5NuVapHoM57uRJV3
	aqc94iXuPeYJZ2FPNmjeeA4aZBH6XsxZnY5DIb5YMyLtOrZs81brbvf8z9swbnisGKG
	pWhf24u6IF/3zDI4tgTGMFdyBfhDpVy8W5JKUEa4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645016784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8MC8lutj+UhS0AG7Jfii1ynj6Yz5VJjPlqyleHB5nVk=;
	b=lp03ruNpCrPWZc8GgzbBAH9vxdTeNITvLkoJ8qGlDr4yb4CTNDqQhxn/ccPT1V7c
	lFqWxsXtcAu1qK26SDcH3A8UAMFKeK8JDYO76F8AYas4xUJyUL28H9e4UAA8RBc2oOc
	vK2bVMQ6WGt3PawfKEvnnJR56I23GP5sRjp7JsOs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f02a41f6f-e7364815-0505-4058-8db7-59b0f7bdbc72-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3c4b26dbd56bdfd33af7e05f64af3504a127cff9ec1a74d450e12daa51acc438
Date: Wed, 16 Feb 2022 13:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645016784
