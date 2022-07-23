Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04D9E7E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 17:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658597812;
	h=To:Subject:From:Message-Id:Date;
	bh=6n2uXVMjRXlUfJXepuPl43NzEYAoi10xI+gRFHH6Jdw=;
	b=FrpHYnm+I00Fhf/WqfONVXoafkMEt/xiRbtesfL1mE0wbpixqe0BerwMIHump3Hf
	BTdvcT981VpwGDNRLxu5t0BxL9gwXoDU1wtfOhxT4205WS92n6Q7TCiw+a9ebh5O+Dw
	h2UvWhfkHAEHflatl0H0NLBMwdYcGfyEMmBUZPpE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658597812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6n2uXVMjRXlUfJXepuPl43NzEYAoi10xI+gRFHH6Jdw=;
	b=YRL8BftKEp+B2FfdjwJ3iCIpTafI2Z34uetSV26Q4Thcf6RiPdjOqABgB2xCAedR
	vzKU4bOK5UBFLaieKDsRCddFZgCIRSQQtSrVv0D7i5KVOdq2LIVTPSsg3rm4x6jCKVV
	D/iytjUUTM7knu/cB6T3IdTttXmyjZBPJHdhkX54=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822c22280e-cdcc21a4-f623-47c8-b706-8c0b4d5ccaf3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9e651ffa526418dc690b03b831b9793e91c61f5023b44759752f4908c7b2c269
Date: Sat, 23 Jul 2022 17:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658597812
