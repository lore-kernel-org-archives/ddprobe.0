Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DAE07B
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 22:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657493212;
	h=To:Subject:From:Message-Id:Date;
	bh=CEnDqhYCC7yO92ASrN9HdovVNRY77OK7Gh0exfT8fAU=;
	b=McDpm0MwvmSBCOPTWx7idUuM/gvPqXu0e+g32DxxbGHMYhBGKkaGK0SNz1b4KOd+
	IAq0vOFjVJgeEhB11NWhHjXlV96SN3YZ4G4zi44GfNaMiKKk/Vyjyqak5NfBr6HapUG
	Lj9Wdr0ayoPdhCx8mXPHbehRGCeMXwiiGWHjWyOI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657493212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CEnDqhYCC7yO92ASrN9HdovVNRY77OK7Gh0exfT8fAU=;
	b=Udm0cgwhyOJpTS1xBA7M3rCywYTRUx5llmk5akyWMje/pkRRu0X1Sg0CiYI9tZZp
	soClAHgVkhs8KE79u9hNvJD46VPkKu81G5RzhRDSHdFQHRj+tQuqHLgMfogAprLCkFe
	nljQvBFSbJDTaQMnIpfxQcmdURdUNx98OPCKZ7HM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ea4b4c90-a938c116-8b66-40ba-9430-901e7ab9df5f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f3357da923c03ce50115e423ea5e3c71121282e225b2024119c641a2a21e7a73
Date: Sun, 10 Jul 2022 22:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657493212
