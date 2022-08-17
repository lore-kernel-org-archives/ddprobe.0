Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8072561
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660716652;
	h=To:Subject:From:Message-Id:Date;
	bh=Eh3ZBpzmquCy/ewu0sAFFALP3IA+ANoCwTJ8u6vdIgI=;
	b=RrHJHEPDsWOwi3ot0fE4TDdo/0disiyXihLpeeSv+eWCNJ7iI2jMRFZMeCiFyoWB
	6S4YOQAhlMHEa1SXvk7TVc5Y/LM4B9BLaclbH+px3KpTM1Z5xC6xvc363FTF/UrJT+f
	wnzepREzXsXrj7K3ncKULQVL2VTr1JrHcb4PcA7s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660716652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Eh3ZBpzmquCy/ewu0sAFFALP3IA+ANoCwTJ8u6vdIgI=;
	b=aWdwN7Q4i4MnZ+E2C8OC0EpaGUcxkObySWsxRxnw4U8ZMD9HC7TpKWh1l/SXVyur
	jUQnMslsEnvLzxPBZPcGsVfrjdHX1x/IkKVYlOvdmj52oN1iZVn2UTqjYrxRsncRaAo
	SxIq5l44bv+PVh9k3JmbTmsoQCE9y/po4xf+KEE4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182aa6d1807-5e2d7d0a-7b10-4d1e-9bb6-6374b7d7b8fb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fbd2741058f9c94048c6f7f1e96b9738050a90639971e76dc45ceb84fa7fb508
Date: Wed, 17 Aug 2022 06:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660716652
