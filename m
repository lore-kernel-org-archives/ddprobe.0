Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83A8933C1
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 17:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645465885;
	h=To:Subject:From:Message-Id:Date;
	bh=Qq/po3qXHR9iLGGgzI2UtmaIAFIo8N33ivQu+pe+EBI=;
	b=B6UdC7RQXkpbLKBoCoSV4D1i30MRX4Pd0ABF3pfM1GvplgfaQkoI0o5WwdBeh/Ne
	M9Dag9INd622s95Ilmw3usbHTcTcaCXbAeIBgvh0EZ6WVHu3Z4Vytd/suhAa0ZdRH9D
	LrdM/dWwT3hngKWVSCoIAQ2KXsI0RJXKisejXL48=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645465885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Qq/po3qXHR9iLGGgzI2UtmaIAFIo8N33ivQu+pe+EBI=;
	b=WdA+g1t5bmwubCxgO18SXTRpBGjtxx9cO7BG4PFGxuZchXECMiR4PHpt05STJ8MP
	U5Z1c2f0pJDt9u4L/xG7xw9thfo1oA/t5nx498lGPqb/VbQpedDzUUAqaVjP6mN1rdF
	zvdesP8m0vopehr+wHMU3kSvZbU3lMyoUA07yw34=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1d68d84c-5032b17a-24bc-4677-9c28-c5918a8eff65-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: abe8f2814e154953240df6fe9d6f6ddabe1185afc4c0e3d0c67dc3ffbcc257d7
Date: Mon, 21 Feb 2022 17:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645465884
