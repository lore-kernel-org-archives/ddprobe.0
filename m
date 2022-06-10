Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260912119
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 17:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654880639;
	h=To:Subject:From:Message-Id:Date;
	bh=jIdW/VfApMrxF3rzCOPCIV2u013IVcWuBvR8CWg90rE=;
	b=S0GhgZLQCYou4pPEMKLGFg4oxSJmToUNOTNOkY0VwMozAUdvSxq8Vlb+ZzrAEAj8
	Oln0jXZbHnObDkpSKrkvB01kKWjvlCjukAMDJviNk0Qz9NWKCRWv4Ez0kdAfHJg4Em/
	rGjdDlDvngT0KvXYlwv9mZBjO5eN0OFVnRoPt3A0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654880639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jIdW/VfApMrxF3rzCOPCIV2u013IVcWuBvR8CWg90rE=;
	b=Zn20p8X1C52wOC3/PkiKIFPBPPA8YSRYb4abweBdzvSQKPe0bc25ckJrU6ZXxvuZ
	d2ERxoR+5DnwqK1YMNVrDIx66tSdUCgeBvR4Cxb4Gi3H1a7FhFEoIrdH3cRGgc7hKko
	N7BxzO13Mz3QX3YzIM14Wif9vFqhSHCLWdy3251o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814e92992a-f5e4da87-89e3-4a60-9855-491c44b26617-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d9c5a0e7ae2e87ef2298f5617174cd41e4211dae3b1981ebe2ea976f93720a01
Date: Fri, 10 Jun 2022 17:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654880639
