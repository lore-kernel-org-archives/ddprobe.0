Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C0237E
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 11:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656934612;
	h=To:Subject:From:Message-Id:Date;
	bh=e5dJu/DhKJucmNQm27KNIWIlFd2GXqSS60yppWkXv78=;
	b=JrjOfz5YLPSyyp2bzalIz1f7Tsq4S2QIHeZCQGvYW4bipfjHEPDk5D8NiC+7MR+a
	X3ZYarLRQAFrmQ5eqB1bl7CtEm/ajqVYnKmI9+zobWIFUECTlt7Fl/uPPvoE2dyQx/Q
	0mkPzSNUI8sOd2NxYvjIRG7kqVc8SsMW3RV4ZH7c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656934612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=e5dJu/DhKJucmNQm27KNIWIlFd2GXqSS60yppWkXv78=;
	b=Ha+vDpkp3mrLL9roE1vStPiU1n0eoDI0HHsS4BjmHzb03W3fAIghLlVtztbca2qh
	LtifbH2TUrlTOoc3aWztdueegBYJUMqv3A98hXRTgTrTXwBRUXXCKn0Z91cY22npslx
	0z9eJDTpsyeXDCXd3HSSa2QbPS9H4u18CyVJISSk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c8ffbd5a-adb5a8ec-d541-44ed-bc2d-106e6d82eca5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 219278d4136401e4d659facd3fd91225f195468646f9032b4876f9e8815f2e33
Date: Mon, 4 Jul 2022 11:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656934612
