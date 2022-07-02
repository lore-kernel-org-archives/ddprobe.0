Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 172F91866
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 04:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656736012;
	h=To:Subject:From:Message-Id:Date;
	bh=PV1U+lLzbJFyVzEmibOUdeMTLuzkNn5oroSeeIWAg4I=;
	b=EU7p2PjaDrpFCXZAfihO3zAV7ExcVIHZ2M8N2Di2mkwQPailFzdFLUN6LJBrYceD
	ZTMdB5pgU+2lagl90EcD4D84DqF9+csi6Bf4ivdvG20pbQkA1C/Fv5JV9dXiLJpibWD
	01C417qm+8Xbb9gz7JlYpFrh287+Wlp2WFcgcwuM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656736012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PV1U+lLzbJFyVzEmibOUdeMTLuzkNn5oroSeeIWAg4I=;
	b=Dci42Xa4cc/ZC8otDD4Q7eVAe1oXTyx5zl82Kwr66C7HYmfgsLWrMk1Tb7DExTdr
	ovFG6x9sjoXRI/sQJMd0fFh1t2cqjMMEOztg3nVT1A2FtiKGloZvvmVN5PXvXRFFbPl
	mlqLZrWcxdRr7Df6mosbVcuqyaD/pdZvt/oMe4hM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bd295830-20c07688-8dc7-472c-b7dc-d3b11c006aad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4f0ca8027ec45e3232d9e4b2ed6c09e3fc01045f85a801e815229dbe7411feaf
Date: Sat, 2 Jul 2022 04:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656736012
