Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9CCC36F
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 02:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647830185;
	h=To:Subject:From:Message-Id:Date;
	bh=pxpLdrTysBy6VDXw5Ub0xubRUDNOlRuDl6Qa8+riZLQ=;
	b=Ba7ApiqQ36TOMpK0TUMUqd4ENS3BkNScXM9u+Kyvg3mDN6fGtD3Z7nBzaMMC6VKA
	o0a3Gn+LSD9ARNY8c66NpQYGC2TkHA8UYhVHQbbsOqtevxOh5kDL5rey50q335evgWD
	2uXAX3HW8aoQpYswCkES2Ohj7BnqPVF5E1KBOLCY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647830185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pxpLdrTysBy6VDXw5Ub0xubRUDNOlRuDl6Qa8+riZLQ=;
	b=gEi15rRxpulyjb/hhQI/2Te55U6cJbz9ShNRfLuwL37qBsBH1EqWLFDmHjjkTpCa
	oRwVjyNuDatnCf49WH0c0P7wnxzAyKPo/Pmeza1Js48Orgsw86Y89pmkXP+Rc+JScSh
	V9//x4doYIaBb+OxpYvnuayH+X48hnvyA4zYeMa0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faa553328-d8d4f087-8cce-4e9f-933b-e26f472ac02d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 73c963480ecf0aaf98f111cd126262383c64cd27f709812e265b5581511ebca2
Date: Mon, 21 Mar 2022 02:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647830184
