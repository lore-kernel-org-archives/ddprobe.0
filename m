Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A0BA46B6
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 08:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654505459;
	h=To:Subject:From:Message-Id:Date;
	bh=tbgz2pKT8Qjdnz73XhJAU7ORpehBElIFK8hJgT5yc8c=;
	b=hJ88DZRHfc694ch92sWd6OKOjEbA0fnZu9p+mOvdLokl7pyNiW/cyS9o7OFb888q
	N4bxSFq1hcGP6YhyNyfVZ0wb6FdHVQBeLJhXcuYJBVOupXUmUMO1lvK36nAdTpNer5e
	SB7uUSilYXMHK+BmZlyLCM2+Y1Ow66maYbwpy+7k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654505459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tbgz2pKT8Qjdnz73XhJAU7ORpehBElIFK8hJgT5yc8c=;
	b=M+R0Px5elrzEvLo2L+YTYGdN1XDQvq8jbLuLxE7LpVRjL/hRLQV8LXq7hra33OXQ
	Z7Qn4UERcA28IB3pOasEyYn3vxtmfxpyqB5HFNrQaUezhfkjf01E6VI1e/CrQWeIKLN
	AP22YFDVSP1qdABJG4FByXmlF57AEoke0IHR8ZK0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813835ce36-7b5368a6-6eb1-4ed9-a8e2-a79d5c58be2c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d83dca391a517de99f173368d4c253fe94937f894f664090347f39ad77f7352c
Date: Mon, 6 Jun 2022 08:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654505459
