Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7040B1852
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 10:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654423559;
	h=To:Subject:From:Message-Id:Date;
	bh=PoKRim5cSfG4Zb190xTAbhxNLW9LYbcZSL9HhQVQDoQ=;
	b=bYWRE4Ln4B5uMGHCwv/RMSBbqnsdVAct9y/o5IR0LLPquuYxXpDSm+m+rWlN8eJs
	hocrCCs7b4CPm2YQ5qZDb2EmWyscBk7NuhBDS6qWv78LS81tmw+nM0SfWhYxXJaLKX2
	uXiLCwGpJLHpLxFP0OdZw5pgvRVhyzWScH2YOGss=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654423559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PoKRim5cSfG4Zb190xTAbhxNLW9LYbcZSL9HhQVQDoQ=;
	b=RJzbq1v+yMmG1vjJsewlXxWAZVmyRr/i1V4wherfQozwGkEN9GNt1fzxMaOFO/n5
	gGG2lt8DZFhvnnGCLFvuFShyLJLan1tDeNfOb1sHoUOdiHosOFXUqkcLrXzDwxn2/OX
	DN1f2b4J0U05aBfi/lAwlDW3LmZdybWgK4E6V80g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018133541c55-9b9382b7-d085-4cb0-ba33-b88eb95e48c0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc07068ae53458dfb54e34ba8a69932be6242e2bc27fc18f1124e7edc216f83a
Date: Sun, 5 Jun 2022 10:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654423559
