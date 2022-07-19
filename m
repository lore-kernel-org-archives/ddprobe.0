Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3D610E9
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 08:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658221012;
	h=To:Subject:From:Message-Id:Date;
	bh=8YDJ5WdB66eH+tFQYAhaM3oOj9OMT7dXnrKKWqPUSKI=;
	b=VnGFoLhKwWUgaUBi+dltyIA8iShTIqZT9zgKRUVck/hFaG4/KXUcrAJXrzZaP4UA
	jiL4u1MJXBV7xkirsxxoLoDUlpVEFkDN3Uerr330epB+MWxabFH/dNiFK52BArFx+tl
	gU81gsukzLiS/dN0mnWUgenY0u6Vnc/yOh1xpYaE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658221012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8YDJ5WdB66eH+tFQYAhaM3oOj9OMT7dXnrKKWqPUSKI=;
	b=ePomAIIDsNIqnTlXLzfJiOwcIdoys60ozKE2pnA8Jjt8DRokBUWGsDaEzH6WeArR
	jl2cPSbnYKJPUQ0UsYtPU8BABGKZ2X8tGEFZb5MSThLU6xnjTAXETp0tJ01D/aAa1BS
	zQzZs0rMI9pNPM47yPMV2P/W8Z2Nbq5OWcb4NnV4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018215aca570-c1ee3b34-636e-43fa-8a76-eedb87faa4dd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 404bbbafd6e9c6dfffaf2916a90fd616c0fc9d5a8059f92523549296cda19289
Date: Tue, 19 Jul 2022 08:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658221012
