Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 138481369
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 20:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655065619;
	h=To:Subject:From:Message-Id:Date;
	bh=326yfBX8DOZLo69LvZPRF1ZreotMyhvpJ9ygHdSEHY4=;
	b=LHeSIiVt8mesCNcrlPgGbuWEbrELfN/f3LtuglGRvqQmAAf84/+vcwYI150WV7pP
	D0anDJtI1UKC/RG56yXOOKy3TrUuP1QJ4nEoQx9htKe7xmB/Ra7El55C1W6H9RJz23j
	GFlxKeVC4Hr49n0dLjU1w2R7by3E30XIH9WKrzbQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655065619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=326yfBX8DOZLo69LvZPRF1ZreotMyhvpJ9ygHdSEHY4=;
	b=RLgMOw0AmaN3K0iVAbJhF7ddgVQavAAvbdEqpsk4b2OrL66TwU0TBLUTEadQy0AU
	K6zhjXYsFy6DyCpEmilsSpyZKTLxRUjMQjQlOb/z0zkmKrwaI9AElAYFBLfOkF6hB/J
	ivLbhZ1pD/m9sJlzzQYoXZyRB768Pr17AK3F5HmU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018159992b4f-2bb7d50e-21c6-4ba2-94ea-a2cab17b5fa1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 357477d7e562268122ea62437eed9e2e2c196adc4008415a0e816e96842db58b
Date: Sun, 12 Jun 2022 20:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655065619
