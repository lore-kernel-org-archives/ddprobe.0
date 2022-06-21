Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0D9A32
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 05:41:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655790060;
	h=To:Subject:From:Message-Id:Date;
	bh=YsF8MkjrBSl1Zp8VHgKnAZ0Ef35ZI0IYgByDYJuWXVg=;
	b=dkFMRw9peyNQrtP1ij/Q9cmEDDkmeHUsJsIjrZHU6jFg8AGR9eSZBWq6/loMqrmU
	I7ntkhtCbxDDLY/7t/0MuKVAoSZz6THBbrvq1E81jIFG5639Lwbx/9uhrRiiMR5X7Wg
	a8F0JBEPxnqt1/zWgPgB2z/1xZYLv+Jjlqd5Xt6I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655790060;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YsF8MkjrBSl1Zp8VHgKnAZ0Ef35ZI0IYgByDYJuWXVg=;
	b=Kb6n6Krf3EZ2E0iX27tb+/KrqbtJFtE+wcC6Tm4AKMet7421afj80DnpYPCNyVHy
	0/bUCkviOP/tN+S+esGclI9lFnNj5Pdr9xMGwAnS7VjZ4dva9KU9k1rg7eyBNGWF2vG
	FMiT3o8Nkex1358W19X5sZIA5dpcGSf1KBbX42xI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018184c73f0f-6dd13bb3-641e-4351-82ea-1407b56d29c6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ecdadff4362a2e37822885a7d474f34aff1fad75fbe88976541d3101bfa0c488
Date: Tue, 21 Jun 2022 05:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655790059
