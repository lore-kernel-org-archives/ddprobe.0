Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3976833C6
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 15:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660233052;
	h=To:Subject:From:Message-Id:Date;
	bh=w8Z/SEKyjhbohfviKOG834+PIzQ1D5M0KhtTIlQU9JE=;
	b=ZiPeuqChAaDhzMevltsSYKDOL2NOfu9IPMAlfaXG1VN29XS8pWGnWOJleam1/aE5
	s2Pjf+xECR3P0wwAQNAqsLlpEsvJLQD6sMzWtF2Fn0qD36SZEiavjg4pT4FvxfSAVc9
	lb76CvQoH3FcNxfQ0dFNaEiHbVOSzq8EWXwbsSXI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660233052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=w8Z/SEKyjhbohfviKOG834+PIzQ1D5M0KhtTIlQU9JE=;
	b=gsWq96Ttb09uToH6S3Ae5/7yAfVm7rAzyEhWxq0/o4i2ftwGG5lRbEA7RFToZES4
	okegs3BsaY80ZcyYRN2Iz2N+YX76mvBAnTPDGKb2PWuzXS9O22VOEgMJzukzJ7Hxkyv
	2lsvblvO277vZfQF6KPKnPQ+kEp00inbypZ1LbqQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828d99f18c-c82de4b3-93b5-437a-b784-40e51c038c3e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 80439335be95294742d7976ee68969fc3c1655246cd01e06d3869ea17690e9bb
Date: Thu, 11 Aug 2022 15:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660233052
