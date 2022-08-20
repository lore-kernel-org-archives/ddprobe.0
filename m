Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56FFF20FF
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660994452;
	h=To:Subject:From:Message-Id:Date;
	bh=cQnNzA0yMF5yYThqHnZ+QUB3NtJ9s2gTGQ5O16wPEpk=;
	b=A6A+4y5gvVBGXS/kEDna66O3OivxG3+M5YKYxAB/c8zOGPTaQttcJcSxm3fuK4J/
	rQamRuOS3rpNNQf5+2TauFCaAOpzDK4aXvZHQJPQ+SCZRD5jejLNq442jhGOhFWLnM1
	bCKor2AecNoVscT8K8Ofh14JI4Lxun1PBfwHL5NU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660994452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cQnNzA0yMF5yYThqHnZ+QUB3NtJ9s2gTGQ5O16wPEpk=;
	b=TkmWR/AoCVFC0TWdxnAesw2aVW0eMnXFjG9m5BY/1ImHj1GRRdZr56szPnlDWY10
	xFF/1+RzSZF6pHRdm1FudYA1tDwAcPIW1kaqqK3O4ZdIHTOLqjVR1WLwqSWGuc1p+Bi
	FEJbSS250bgy9FTzvlzGXGTukVQiiH4l173CgARs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bafbfcbf-299201e9-03e2-4d5c-8a7e-e59e78003748-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eff20f0c7a49317c432531f7d32fcaaa542db3ec16f26edd5a06fc7fd4aea089
Date: Sat, 20 Aug 2022 11:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660994452
