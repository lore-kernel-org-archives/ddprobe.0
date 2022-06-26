Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10E362F3D
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 15:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656256012;
	h=To:Subject:From:Message-Id:Date;
	bh=QbP/fR0S+Qe4VzyEC8dQTcX2etOhhvWjTFANPTDkZwk=;
	b=eZAS78WrsSE7z5AFUuSYazC9bE73FWFxmueJhv4aUvxxzmyftsqH4RDqNic71Pu8
	WMJtL5IAkkXh89Pj0iiIYR7fCOpxVWWE6O6tXKUMRw2du2eMZjjlwZ8ZJOCBfBllHwH
	IlbM1ocvVJWCkYoUN1t+b4SaZSh2HG3kFdaXY9uk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656256012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QbP/fR0S+Qe4VzyEC8dQTcX2etOhhvWjTFANPTDkZwk=;
	b=YKZ3nozslEEXcNdzdi+7T4W1gyMPgeJQhD0a3hMgeQC2X0NxdgF/r3UeLQLW8n4i
	0uL2y+MweuVs8HEISphQ/6AHcToOUcmMLqhsKS+Jk20yaJA8H8Dfvwi7XDyYAWAfoVi
	1/WxtaNeYAXVfZLpapasHfdt9RhEfDN/EKaYDPE8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a08d1ff6-d63d2aa2-d766-4109-bef1-c2e2b31f55ad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a4c538917c8c2d022abf83b17d0d50bea708a683d2b1f49dce9255fca8fb24c7
Date: Sun, 26 Jun 2022 15:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656256012
