Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DA673D9C
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 13:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659100252;
	h=To:Subject:From:Message-Id:Date;
	bh=YABqavJwGkpRUhd9S3P/wYfNfnq3+Dq0v+1BSEkYfmc=;
	b=U8rSRjbZlERmsM27QA465Ep3MXfJrtt9HcJNOXXk5E0tE0m76B+UdclJugaicGyK
	WDeZgdv8mqZsYt+ZKf62FekPGKJwXMxAZk7K8mKVa1izPMbW3N7JCE1igdyJDT5kadS
	hCETB9YdipjeJjsYNrSv7UwuoBjlBfjwFkZGuMFQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659100252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YABqavJwGkpRUhd9S3P/wYfNfnq3+Dq0v+1BSEkYfmc=;
	b=HU4deR2fJiSGvLTTyS38IFinbE58ngPy4i9f4D609IjpDNTvH1SVUB/kXOTBa/PE
	r6BbAgNG7NaiJop1LQdBaXzhPybHjI/eSy2wgJgrtmGDHzlYXXVimiJY9iTAN9M/ANa
	lTUdUGSmb9Usr/VTTNAz4JutJTuU66I6gHV42P5U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824a14c990-b472fa35-9a92-41d7-98f6-ed38e1537be6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1980464b007f26734bd4136399396761826cd619fde809f3912e5a8f37a9ab39
Date: Fri, 29 Jul 2022 13:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659100252
