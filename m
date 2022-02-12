Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAE277A
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 14:00:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644674444;
	h=To:Subject:From:Message-Id:Date;
	bh=hJ6oDRy3EZgpJgbZhxPoNYWyp+hNwTXCDkdyUGRJ/+Y=;
	b=QGFZ/OrbgDRVgPv2LwmuGofLOf9x3GJ0UAutatOsLPc7xdxZVPczh5kaNCz1kn4k
	rqiUWi7/aRS1DE69JeqKEGuu/u6WitYCGOovCVUyhZ0hoLW8nk3cnCyq+I/kUqS1mHJ
	jq2pZE1z0+/QXQG1fg5C6XrmDrI3N2jYZDtWmYbw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644674444;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hJ6oDRy3EZgpJgbZhxPoNYWyp+hNwTXCDkdyUGRJ/+Y=;
	b=cVhCGSE8maPGuKX4iefXpdVsvcjNx65eAe1b2y1i5/oqK435Pmbpwc6osXwwrZ89
	QQerqDeVQGSzaNgEGadXElQ63trEYYjb/uuX74Xvi2rP//xVM+j6gUc6KGWJwemUvNJ
	t5X9HXL10i7gE66udOlyCcs8DpqiYCRN9zDsePcg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eee3c6aaa-a2b563fe-6b8f-4659-9d38-3e0fd6d37f79-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aab040a8e7b1dab77243cf54f252b38187ab6a640952ea2f49a2bcdc517e6ea2
Date: Sat, 12 Feb 2022 14:00:43 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644674443
