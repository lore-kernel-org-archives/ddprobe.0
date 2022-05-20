Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CEA015AA
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 03:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653017879;
	h=To:Subject:From:Message-Id:Date;
	bh=rZT/QV02LoIx3jBd4LvRiab/MQx6Hev3QtADQEOKtYw=;
	b=Dy8kLjYjOBjtUqGuDg7DVZUfZMbUp+37078sSMxE0uR9rMd4j1LuSVlnLJWZJc84
	Rxn45yAsUJfydI5uTKPrnmE9S+Zo4+/UXxUtJX6VyPkLpWCHv1gisfSqOXWuJSMZT+k
	xaEZoRowknO59rrQi0xyvTDpF8fiGocsH4ECV4A8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653017879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rZT/QV02LoIx3jBd4LvRiab/MQx6Hev3QtADQEOKtYw=;
	b=b+hGEtISJUb+WvjCpmXfACOY7+HOhsklKSmxGTOc82AF6K3wBEqnmPxl99UkYRNn
	HrnIcMpfJfws13ciHg+NneTtVl4C5UrWoUqjJF66DwPKf5U4LYqPqwp36HIX0Teh0xn
	WniYPXr5Xv/WapCIx1HyfLjwOHZvwINqmJytzshE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180df8b234e-3eb915df-5592-4009-ab7e-a0f58a5c238a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 332f9135d32f36cc25a29f55cec89525d1a0b414c36fb06c5f62394dedea3aea
Date: Fri, 20 May 2022 03:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653017879
