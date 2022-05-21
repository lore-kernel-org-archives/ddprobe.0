Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A1C43210
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 18:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653158939;
	h=To:Subject:From:Message-Id:Date;
	bh=LKuCdmiJdrxMi4Haw9cO0pINWhhU9ZCcqvMBwcAVUNY=;
	b=SYH7au1bUQGNMn2uN0gbcGP+Iq+xqmTXc2GaAZ2OzFNon74HAEmLQETzDAI/wKlJ
	wKecD2/dnGuVn2KSWMqFV0uyx9kRKHY7eeDOQQb6oKf4S6KlUk67noUAuUv6h3HxqT9
	bOWqzQBK0os65y+kb4qW6HiKteylPZliWCEiyRGk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653158939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LKuCdmiJdrxMi4Haw9cO0pINWhhU9ZCcqvMBwcAVUNY=;
	b=LGtDnJZGxk4ZiTz1Ie4w7Ti4wcIGHqeqbTv1Ndc18i5cGAdnRISRzsdGIuaSMUC5
	cz80KhV3qmwL0SOHKURe2ZN6FwyiHJWteVdwv1Ol3mCiK6FRz9YFpX6GVp8e3zHO9a1
	fKFbt3cKA17UnH8yrJCPGS/fUMIdDNcH/mul2bpk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e7f38ab0-e343c270-c4fc-4c16-90ff-3288a3fd8d2c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d81a400d1711ec0f1b907e56cb9644c48e6d8c1dd31b2a4ccc935131113601e
Date: Sat, 21 May 2022 18:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653158939
