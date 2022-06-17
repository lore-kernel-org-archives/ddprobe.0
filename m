Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CEE17F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 07:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655452079;
	h=To:Subject:From:Message-Id:Date;
	bh=2LOspah8NNIhfHBusLvGjsNRm3o8zadCiB/Rj1yWExo=;
	b=XoRCKkKXgWGoGoOTRPqGl/CkY1gXkQ+nClFW7DhoBR7FEG79tvVUV0IQtCsH59vW
	q1ou5Xho++NfAWAqTVEtdNVvkQv/PxroVwO+ByHC4rhf5Dw1eV+zuASzuhCXL9HPNZ5
	X7Cu0qW1lENZbwQHIpBK5gkibxtotbuKPQXGG1bA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655452079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2LOspah8NNIhfHBusLvGjsNRm3o8zadCiB/Rj1yWExo=;
	b=BshtSVJDLtsMlPlpPHr+6ljHGP8HaZlrKGvwUCDRfpLIO7kj4fPK7mPPtKe/Kv1A
	vPgdWI2hkktO7zSA1CfszxntHKv2i9yG55jpEvyQIoKq/AGUUnbe06YxczgfY/kexnS
	7ItRKfdZdyNz6+M+0tPCl7vkukImXBrUyU6KVWZU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018170a214ce-d3c4258c-dae4-4a31-b0c7-e12affd0ae5f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9e6494fe05258fff22e2fcb2c230461f6953f3666af589bbe1f05fdc43d6d46a
Date: Fri, 17 Jun 2022 07:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655452079
