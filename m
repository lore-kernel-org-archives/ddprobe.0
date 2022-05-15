Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B58A2F5F
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 23:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652656859;
	h=To:Subject:From:Message-Id:Date;
	bh=96s39XmWCx+fhtNqWG/YKSq0xvoV/lqBEL+A3iv/ZQk=;
	b=Bmzg6wl66Yr8cUH3RNtQLB5c6vr6IWv2meQx4gwH8pcEsEl23TtVSMU3HxZHTj5D
	BXxfrT5eUDjzKJcFberQGDPA2zXJsGHgTwfLbT18IXGGo8zV+bUrFXZ+Za3PSWtoUgk
	goK7BB9LbW105M/nepINoH+7ePOmDPREA5sqEfPM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652656859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=96s39XmWCx+fhtNqWG/YKSq0xvoV/lqBEL+A3iv/ZQk=;
	b=fsPfPWfHtdUYhc/pWBsqztdNnYYah3XxUtbxNZxSoew4z7kNnzmC59jqpxhyhlxU
	DeaZhDOJvjGdREzLUsnAKRVu2xQE1MQlDRBv0zM7wJNGIb0fd+354UQL9ntNT+ewzf0
	O04smLwWNVG4NmcjVAhx79se4c1XT5biLBx06VSU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ca0668f7-df52e55e-0729-4e6a-b798-c25046e95b05-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0011609fc3f8524e3d2c3a77db59b237735a3f0252b619863e94223b329ef2f9
Date: Sun, 15 May 2022 23:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652656859
