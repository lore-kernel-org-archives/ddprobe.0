Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41A36362
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 05:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660368652;
	h=To:Subject:From:Message-Id:Date;
	bh=F8Irx2AUWWCgPtBg/FmnQm2JIBStHa430fQeTmQlx9o=;
	b=fXI7MhUExdfkAvXK3/YJ+/zYV58VsTSqHa0zzpPrpGKOOdZheB4B25/HaAEXzkP5
	srISHm7DJRZ20XVKsBxGOCcQbGUsLDGv6ACw5DrCfDSBIwF5RFsW6yAfMSiGwZBJev7
	Azs39IfoT9IhDOYkMsPrt6twvpb7Wcmarb98Bn8M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660368652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F8Irx2AUWWCgPtBg/FmnQm2JIBStHa430fQeTmQlx9o=;
	b=FGU8z+DpFc2jlqX3YESHdp35PEiWGrCFoUbNHZnbDcgb75HUaHn02eluMQdni28S
	sis5UUKnyW2M8CWR/Bb9vbCUBAwyv6Pi8LmLweA0D7/QYXiNg13G0y8Wtpwpd7N/n2n
	3fKX5t/GQSD2iAbbB8B1u9n2/CobaOHVX9UZBMeo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018295af08e5-6b68073f-0e11-4d46-8c7a-136a7f2c4bca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4232ac8922f0afe55a542ba31fe7ab49c683ed6bd5a62c138abc0d3c14f28078
Date: Sat, 13 Aug 2022 05:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660368652
