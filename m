Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 091C029AD
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 23:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654473119;
	h=To:Subject:From:Message-Id:Date;
	bh=bsIRuqxQAxgmS1hFJ0GTSH6w2FX64zpQ/+qMOSMmJ8k=;
	b=j//PlOMcIQaUZVdK/vWTO5GBDZrbHaEtWFItKjnmeoxx8IGhG7DIt1lvH601zdzk
	9dAcD9ywufcvePbP5tZhLS//1Ox1ikHhZlFhrTu3nhD61S9HBAO59cnK3Z9nrVrQX84
	bVZUgHt/kZKDGZFQrxtyIVDOwFqfXM8tHYf2DKDw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654473119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bsIRuqxQAxgmS1hFJ0GTSH6w2FX64zpQ/+qMOSMmJ8k=;
	b=RPJAaQs2LJwkwwE+osl8vHl1SQG8P0dm8ftVBbvQs6fU7fL/Bd4qySJ85/6i/fvE
	qmdPSrW/aCMyiF1Zg+oWK9IwVMRAalCmflfeLvSesGlolhuZRfPGbq+9/ZHnjdotrcG
	ppgkViZlkMTQ+wwpou/Ms5E86S5QwHIRNkICRft8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813648563d-29f76fe2-b725-43d3-adae-3bd3e008005b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 43d42495c4d96cb5787e17fc47b841483b7c184d2f34212cf505322e54e07e77
Date: Sun, 5 Jun 2022 23:51:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654473119
