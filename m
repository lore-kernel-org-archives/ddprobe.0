Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 784803C26
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 15:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659193852;
	h=To:Subject:From:Message-Id:Date;
	bh=5sgLRK/+6L1X+pV+ZoM8xpk+GibCN5LQRlf+wAs0kM8=;
	b=ZBk6zz7+IbwPVDfF/uzMRf54OHOwR/NwR54sqFXOv5v0khjelEUxR6r0mqKRxXzR
	7as2pU4e2fqofa6SVus058F5rnBkRcRlrJFHEN/1dOceXtVxSG1qHkmTgXUeGZHJqI0
	e05h54txCR11X+XMRVnj+HkuFNCiipr3wrggBbnE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659193852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5sgLRK/+6L1X+pV+ZoM8xpk+GibCN5LQRlf+wAs0kM8=;
	b=Go+8fEat7M5JD+vWYPHJc6V47UZEiqeu/9SLAA4g4d+4U8PIAdkSg+m7/MgxMFMc
	LPo6qxgOKMdJ8FYArnEgqACa6NB7wp91wTLixUqrUP0catDNpwi4SyPpH2GXEUfxF7V
	aIWJP0GaQW0W8b37yQovebqKT1pI5bmf7a9tG0ng=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824fa902ca-bd21b1c2-f35e-4ea9-a306-60098a29f226-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 210f34e063ed5c661e1591017559528ddce9b0a54ce4bffa5c189fdb8dbf0b07
Date: Sat, 30 Jul 2022 15:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659193852
