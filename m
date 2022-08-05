Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53C5681D
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 12:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659702652;
	h=To:Subject:From:Message-Id:Date;
	bh=M6i5xZArR0SH37S6v3GNmFYxOH7pPclP0EJNCezP2iU=;
	b=YIHOVQa9VJsD2lT23JBZQB+UacQdLJykK2FfNeCx+zVwL6OIzoE3cIyRB5qqkK0L
	oKjIqoAFnotdBTG0dcWpUZhapS8eJQv2KG4lzaBiYDmw9oP6H56Jww41YRoafJ7O4vx
	Kgz1q3Dw7qgJo8tOxWTh/pvPmq2zhxvJzRC69rMc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659702652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=M6i5xZArR0SH37S6v3GNmFYxOH7pPclP0EJNCezP2iU=;
	b=Pnj2TesMqPZKCF2wxHFssEhpGBGZGqtLMuhMQBoJ25BFOJ7WlGkGqAinaQUR2wRt
	jUfkuIRswKmfevQ30tuV/+FJ0Ss0dvXsFi/xdRQ+kHBGkkwCWQzFI1Pi0FLBu/Psi0z
	oUhMrsKpj7QPgJmEONpj4ib0rCndTMx3l3s2khWY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826dfcaeba-56c7f2c3-1b8c-4977-ac19-84e636e0f0bc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 28cedb9edb38a08c22a1bdcc9357069c063aba2e4fc8248b41cedce3260850f5
Date: Fri, 5 Aug 2022 12:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659702652
