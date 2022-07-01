Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388F61855
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 09:36:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656668213;
	h=To:Subject:From:Message-Id:Date;
	bh=tJqL1WPiEJ+LBBj0gQUtZvXdWM60Da7bGX9y8Le0A4o=;
	b=Qp+VWbe2OvcXmtB5AL16z5fljjENqgP7xhesCRWs3cFvP+xioRTkq45cH+wMBtJH
	zuKUPrl0Gg70gry9WBEwPyp2akteLOt76uAxK+PWKMjnWnt/1om0wJb4IXaPeXidHKc
	fRHbA/idM0vJ4G/HIb8kYkgqzqa3qqSwGaIVB+7Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656668213;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tJqL1WPiEJ+LBBj0gQUtZvXdWM60Da7bGX9y8Le0A4o=;
	b=dJLC4tvoRLYhzVUj6inmmIwW017bXMdCIT5vwC07cy2DfAnQqxCe0lS1EVEwhBkN
	9Yquw+PaUNCZ03cjy/YM3UiM9K7tRR5j5ZjUUtO43Nz3XAd60HclCmxPfkFQAOE5D35
	O8rLC4cLc1RqXq8sN4XVfvGd2KSphqO0KEBlbIrg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b91ecc58-b9afbfeb-4702-48fc-83c0-86f601c9e405-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 373a50ee94ddcfe2c46378d12fac96fb131fdc3f472452db2791af6ab8d0e293
Date: Fri, 1 Jul 2022 09:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656668212
