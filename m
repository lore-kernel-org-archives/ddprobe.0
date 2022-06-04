Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05041EA0
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 16:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654361279;
	h=To:Subject:From:Message-Id:Date;
	bh=z6Lu3i83SxPBamOcbVDfrljzMGfwOTgcJqixwLeYbYs=;
	b=VeP7RptDVOKBEU8B6rG/C7BMHWN0pW53S1Cqx1xUQkMvlaXfk2SaC+CGp/wWbfou
	F2ZT1qq4ylCKRMrOvmNkmPpKqiXG5uppTSoBBxgLam1qF+GBP7rXGd4DnB6KYF6vDRs
	soqxj5U1+3xqfzL0WG/wLOXpxqqf6f5R760OZOZM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654361279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=z6Lu3i83SxPBamOcbVDfrljzMGfwOTgcJqixwLeYbYs=;
	b=WY+zDhnrM5nD4UPmpVACbSBGfn/14th3dlBlkGihnobwc1uSGL3qHet3PmhVVB8v
	PAYn6YjGrZM/J0dkVEf4fxgIRDPDvbTYdMn7/mG8wYRgRd/QCthY1y2JjfjMYRExBPk
	c0ChxXSJI3UI7pkSLSt29SY343yumOlbF1Wqwy5A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812f9dcb33-2cd70d2b-5e69-4449-8d8f-a5076fc971a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d1b7d47ac2d1b63d22f8ebe5755c232f113388bfc98ba1af44e96e5e18ff3db4
Date: Sat, 4 Jun 2022 16:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654361279
