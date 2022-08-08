Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52CC37A
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659990652;
	h=To:Subject:From:Message-Id:Date;
	bh=ZiRkZyRjbfl2WyQF5Uf8xnCA7kIxkjQrTFhN/+inXyc=;
	b=F+vW5bV3hZ2JE+shz2y7rr1y4pvbRoPgGBHjKrq0Wh52oc6QxnYa9XdZZGNg4ybP
	QKDr2ShQMKaCzVjJEhPEmdUV9P8N2qabanbWNza4eNjNjPLrwld+Ta3GJIkNu0z5N8d
	vS7AeBrCFcpycae0x0jn7HzXB+L6ulHLaDZEg0v0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659990652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZiRkZyRjbfl2WyQF5Uf8xnCA7kIxkjQrTFhN/+inXyc=;
	b=D7n1yUWEDAEh2YVTXGpjtK1Fr/AyfkDbI9IPPxX0Scr2T893BB2dpM9GRvNCkhiu
	yAI+i4/AhoIe8PJ+HBIIaikBOFnudf38u+CR19hicWqkyBSOtCrRAsoQeSxY3QE9Wiw
	EOVZGLF3aDdSczN2DRJBSwLuGMds222n86VWBZlY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827f2736a3-ca953a04-641f-42cc-8694-5548e60649b6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e31421c75008f84d4bf92c9c90fd76b0ebfe05d3903dc17748d7da5dfecc7d69
Date: Mon, 8 Aug 2022 20:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659990652
