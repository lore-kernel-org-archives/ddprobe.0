Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9753E23A5
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659201652;
	h=To:Subject:From:Message-Id:Date;
	bh=JcimTq9SvyEbIEbMM+4+PXXEF7vHmSCQoX+QUcHA358=;
	b=eXTKHL8p8U17vKLfWc0ncBNIO12MSXTDr/HMnXtqSsBGIJ8jxTcRqTNNPSWLiOEN
	Pec3RZZfsNep3eQc5pC2swshjQ1xMnjMo0VWIHnJCEsmmjp5hdd+GLid5ThY5j0HjQM
	P10s9y71m4hrQMUCedUJ4Bo8HvsCw+4ZSaA8UGCs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659201652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JcimTq9SvyEbIEbMM+4+PXXEF7vHmSCQoX+QUcHA358=;
	b=izv7q1TwPY72TrXNxDNrCJLryAIvYJ2z1SitnIyW8Bc5DYX5SrH3jQ3WLYd4BXfm
	4L3SGZqtL5v2o8aiHwv8LTAit6B5NHG5LHtZmNIA7SRi4YOEpaT100oUz7x8Ofn0JSv
	wjEPtTLon9dh+nuAxKzUCmrqEj+fckYvYWpx6t/s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018250200739-2091adea-ab18-414a-aa48-e2ad9118578d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 99b158686116cfc13d6ea2a17f350361225f3609a76d4c7a85b11e039d3d48a1
Date: Sat, 30 Jul 2022 17:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659201652
