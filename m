Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0823A1C32
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 07:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656746212;
	h=To:Subject:From:Message-Id:Date;
	bh=C41uaT1y90t34RtlZ6i6ke7e6z26jdvf0uVAtWptNYQ=;
	b=RjOZOKsE3R5n+Zbgyzr25R9thF5HEH66zNB/B1b31alLqEJe4PJaciM2mtAftGSv
	TENWeS8Dk3AML0G72tsznTseZUN/soupRlQJF3O+kLkXjrrbottZk0zuL2IrRZo5302
	CGTpa6ApFPsO8SwfQz4/KP4QxsIcu5GmKpSw8yH4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656746212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C41uaT1y90t34RtlZ6i6ke7e6z26jdvf0uVAtWptNYQ=;
	b=dKiEo4X/Xggn0Bc9CxgvyqegjmaYqU9PIRqhrQim8YtNY292xl4If0BCMJ7A/uBB
	MP6w0qrtaUYKG6dpufaR1H+QpWW9MI2Pnm6H4HxwZS047op15kG6MQWAm+trpv12owb
	C+RhKCJZtaQGnEoCskJMJ4YUCOiwEfMOuMqFBmj8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bdc4fbbe-780ab902-0be4-4383-808f-bf85a313fb29-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2dd3543a6321dd40efab336f9846a03445db0fd4dc04d9ec17eab7b2475f686a
Date: Sat, 2 Jul 2022 07:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656746212
