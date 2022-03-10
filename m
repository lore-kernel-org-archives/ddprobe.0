Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF3E07A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 02:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646877985;
	h=To:Subject:From:Message-Id:Date;
	bh=HCOpg7Eq8d3Bdn98Xx/ZOB8yx5SoLdgCV0E2kVXnRsA=;
	b=agvAGn8T/u/fJ0BWk5P4zxhqBF/JJmGG9ngCFKrH/6hrMzTlb59rtJBvGLMaZIhQ
	yKP19T/PXmfiKtlhXqC5UJhBGtrtmnekKrhCyPel700J8AR97HKiqLB309t7bMAS640
	MJ0LWS0OxTQsJ3uT9HOilQS+Tor1FXT/37KBzd90=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646877985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HCOpg7Eq8d3Bdn98Xx/ZOB8yx5SoLdgCV0E2kVXnRsA=;
	b=DJkeSya4/lLnGlNVt3rdtZhEO2uoLp/mYck+V3O2j/wf+KxjlUQHiyJraI7JseoY
	c5i9rxYJB02zP/cRE5SOAgwyN/0dsAdhEV9W+BUcSUPYPcVIIeurxxPqNdhkS+WK0/9
	7ehEUagtW5a/vijgQ48mQ7pCwe3x1qaAmW2trT8g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7193c7f1-737c7ba2-907a-4292-a7a7-1d9e1c600d95-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 81f4ef5f32c49053a7ea120908d8b7cf84db0b566b3bbf2bfc8b50004b00ddfb
Date: Thu, 10 Mar 2022 02:06:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646877984
