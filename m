Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E9033CC
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 14:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658240212;
	h=To:Subject:From:Message-Id:Date;
	bh=MkpXU70NAAyB2A1s/nGx8p3kzZWqOPBnIWlxE2iXqHk=;
	b=GY/JHWUYaVpvDmcbPXfek8ty1vN99q1HHxfg9MQMym94Yn91NdwBv7OvhgI5T7GC
	emg72MyJCLRS77MnVpW9CAV6IgIau3sPEKYVUq06RDKWfoZ6LRfHMEe7h8R7kUIWDkI
	QF7nDCbP74pU4THSIhQoWz0o9AKX57l1qL+I1Ud4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658240212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MkpXU70NAAyB2A1s/nGx8p3kzZWqOPBnIWlxE2iXqHk=;
	b=B2eadtlFxYZR2nbUbzZYz0C81AiJMqTK9Va85t+tlJ8K3SkgZ5wW+JCGkhtKGq39
	Hd16nutLlTsSZ/bGCsSvT2xReXafWSjulV6MKisKklvKgZcBo02H0TEpXMV3hcipzgv
	DE6ujewSPpSCdhSaMhYeIAdR8tnL1SWK+Ab10638=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018216d19d3e-1109b8e0-e8f1-4d86-86a8-c545e672c1f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be7fcbe4ccab6d896c2ac807faa2dcf2f334c8cec8157bff97bea7abc802e498
Date: Tue, 19 Jul 2022 14:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658240212
