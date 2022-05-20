Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7335715AA
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 02:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653014160;
	h=To:Subject:From:Message-Id:Date;
	bh=f/XwERhI0whcrwT0v0CKzsgxnYKuF3e4Jdthh4TW7MU=;
	b=VA4FT7Luulebctwpb2Js+BFGvTqYVOAtA9WRy2Cnt022AvzAvjyLgK27YjgSsrtn
	w9TGmcFO0dr2C5cldmUSSzdZLbr21ufMHDB3eVLpiP9mfcksLxqKN65Khr64i634Mcj
	eNmQfoAIYRNVA+GQFGFX24903U8DF2N2ozeKuodE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653014160;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=f/XwERhI0whcrwT0v0CKzsgxnYKuF3e4Jdthh4TW7MU=;
	b=Fxs9fg7lDvjB1ENXsj4D3MxzUa9L8BDHTb44j3Vgo+WDF3pActhPlHsIrymV8NB6
	qRr1Pe4TwqY/DEbj4Nd2wFPV3yoaVZ+5/C+dLFXQ++50cGksoFPN2HRLC4CX9lk842L
	xUZbSzEUnvnanAbmIbXAXoCYR3RS+e1EpiQDZLlk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180df525fa9-5f8c1c8a-cec7-4e54-aed8-936c57185b88-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9c7b530f40a38451888b30f3a9190e986d2b8491e73e8815f9f435b77f40b2ca
Date: Fri, 20 May 2022 02:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653014159
