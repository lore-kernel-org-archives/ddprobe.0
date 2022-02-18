Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DCDE4AAB
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 17:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645203685;
	h=To:Subject:From:Message-Id:Date;
	bh=AuW+WVR3SMM5h/DonS/aL+KCzjwfEPJt2E3dAuHIQaY=;
	b=dxK0vzgQhDpwkCu3rCGyk3mqUUPGBHzk58K+lgrIov6bh8qjhw+7HbKcgOkT8MLP
	ZXFquFD3GSEsdf9T8uq50iWWw/c8sw8P8Pk+Sbk2uGOnpTKeo/aCsRjvAKsAjcwZs5d
	hrC/yIs6u2QMzgG+noUyEKeNKJ/NWTqXeq4waFz0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645203685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AuW+WVR3SMM5h/DonS/aL+KCzjwfEPJt2E3dAuHIQaY=;
	b=kgDHWAayBCrSQ0j4E/Kcc2a+efVQ/K6OnX9rJkPng9eCjV9ppIUTvEaJNqp5QJSL
	C8mx6pzvcKW4g/jhkO06YaTYMBeeemgoeLysz0O+lvqNWaG0SDdeMTlCgvENCdBlGHC
	x3H+KZqTfShNYEXHY6y6t6acz+o5LkvRGwXAzyxo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0dc7fe24-8f03dd97-adb4-4619-8518-259a8671bdab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a881e36a27de4018def3501a8da4abfb59fbacbcb97cb43ae9ec3a871f04ab3b
Date: Fri, 18 Feb 2022 17:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645203684
