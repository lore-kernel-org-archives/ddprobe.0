Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0888BEC4
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 13:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653484259;
	h=To:Subject:From:Message-Id:Date;
	bh=RPmgaqRxIB1LulRMTwEQEVFzv7p7A1lEqtta34IbdiI=;
	b=f0c+2/TRAptB1ZH6hwn25Jd9+9c2LVVE1gM40dfUjsd3yiEpEFd5h2lUhYsKhsF/
	nqvxGcxyQBEN7RpjMHY3m0e1wdD3kproXFjbC++soTh1TOD0JtrUoxDdJgNziKnmzgD
	Ea2j2UHnWyIxgNeUs4yKu6thYIgFwEA6rfs66R2s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653484259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RPmgaqRxIB1LulRMTwEQEVFzv7p7A1lEqtta34IbdiI=;
	b=iVa8O1tPYFqowJ/UhcTCHWT9vrqDKznXWzbaB8qnBum3eVY/fgpgsfVshURA6zBF
	klX3wkPycLm12SlED4Ro8PXT0P5kmqBlACoR9X4b9Iw8x4KplXx4w14tlM+RRWqXxM7
	I+Km88HBNpuhITFc1VaByaqdCckMR1wE9pDitXWc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fb5787c7-52fea47a-765e-4291-b0f8-bdf0c215621c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa9b1e3f45ba1e63e81f6f3acbe70903fc591ec77c15bcfe2149b64469f702a2
Date: Wed, 25 May 2022 13:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653484259
