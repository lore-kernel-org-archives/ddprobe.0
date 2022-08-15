Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62E197E
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660554652;
	h=To:Subject:From:Message-Id:Date;
	bh=plCifHnv9tBSsEGVWftz9Q7w/0sdf3FG9PlawTechT8=;
	b=F2znzssjq/arV4aRhAWcri6xEFy9AaZiEpc2gzkb2IaxyclqoyIamXkpug7vZhtb
	GVDZ3fSUGToOEnq0M+4amx/+fwNFFr7nGY3Cz72OUGxY1iNghwQnSc8A5fvze+X9V+S
	hqZjwsYLPHqTkdoBSTEkFEjbaAOq2oAO4F9emciM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660554652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=plCifHnv9tBSsEGVWftz9Q7w/0sdf3FG9PlawTechT8=;
	b=JSd+dgYq6+WpIzz8CH3uSk7ERGv8ddqKxNFiPIIL+n/o3QUiLWBiVqCCQLciKLoS
	cP6zak0qBBLrbrSlxLRLMm7PyMS0u6JrGcxLzax6L6Ft3E9PT33U8SCsSDlVJa5XdUm
	cq4Y8uCOgJo89A7RxkrzuQlkAbOk+5dkEKQUkxCI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a0c52bbf-15359014-1328-41ba-976e-1c80ffd62295-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4632950efdbbf18c3fa1fbddf794cce199b95434ce32b7f023eb6bfaef94c5d9
Date: Mon, 15 Aug 2022 09:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660554652
