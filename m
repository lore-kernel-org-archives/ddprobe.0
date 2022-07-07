Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA6028F2
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 20:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657225612;
	h=To:Subject:From:Message-Id:Date;
	bh=H51aCdEcBn6O9fk0SsVdfXOp29GPTvWPxZmrm2GCRmg=;
	b=VoqDhPPfjOcJ39yKKVUamOR2hZ404buh1wWx94UpAMOW01HGeJztqe8Mp3JxokJo
	/Sd0LzabR8viDhy9Rg9uDYGrssglZLfm9pwSctKo11TGaIMcMoblBofKXtxYzETFWLt
	ZpCuWoavkLLAj4zjy/To4hFd4Aj5dM4nPstxkdE4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657225612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=H51aCdEcBn6O9fk0SsVdfXOp29GPTvWPxZmrm2GCRmg=;
	b=fknzxrbIDHbvMwronKjb5LWxqGrtGfKFlBuFiRAGXx6RpGJXT0Yj816To0IfFoAB
	83Jd/8OEP3Cxdjag1+kiUKqKl37qileofZ1jrX6ghruKre6XZO0KSJAQPaa/SoOCSpL
	3aOMYNI/K9e9rba4qdy4CqB7kbGOBdSxdwfzQdAU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181da580c02-fe43750a-461f-41d9-82c7-aa2ec4e428dd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7a9bddadb70673d222806242c85962506fec14d1813b2e50a89b1958631cdc67
Date: Thu, 7 Jul 2022 20:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657225612
