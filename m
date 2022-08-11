Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426CB3201
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660221652;
	h=To:Subject:From:Message-Id:Date;
	bh=BqiDU0gmaNKhnYPqnIKBfBO8KRMhcmqegZAwp658fvY=;
	b=bUIEamkI+iNALUcSOsTlaNU95uwWsNN3somY44ZBaEe7SSvVwD8U/jBGMZofaM3/
	OR6dxIWyL/nG+kUzA87K6s/cJqe62uEdqmmYba0WDOig52DzqS81ePLH4aCHMxWrHPv
	0U/QA9dHQVBDDwRqfh8MI+sLBZFdbqJwS+GNDlZM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660221652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BqiDU0gmaNKhnYPqnIKBfBO8KRMhcmqegZAwp658fvY=;
	b=ZqBen+s24xKVogRmRmCZeoi95WFOXjR3/9dVpke5M2Fanwk7HeT4roCZe0df9GKI
	dPZ7cZqVAEsB60TqTTPlR5GawbBu29K5nY2sbc5n8dgNTUn9EppnDiZ4hn+0cq4rAp1
	7SamY9dMC+A4twQS0UhG7OOaYCNnixfu926D60QM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828cebfe33-6d4074b2-1519-4d5f-bc57-b24d1c5127c6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 51885f3803170788bf99c52402dcd4312575d7a2acb8dd280eca15a785904644
Date: Thu, 11 Aug 2022 12:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660221652
