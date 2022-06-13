Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E68B47C
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 19:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655147819;
	h=To:Subject:From:Message-Id:Date;
	bh=XgFl1fdebbjpus3IirNhckGMxmUVilIMuPsb85EbcJ4=;
	b=RPHidVbHpCbLBCD+hQDJFaBpfaj5j2mo5DNDwb4eJhvQXsZnp3Fn45LTHEmNJ9aH
	gbutzWPU7bB8x8plOmlwPqCp/D+hx2EWtr/nifpcvRXRruTLcEgeF20ItiUwaw26R/X
	BA0lps0dA3TUlQF5WLScQlanhZPtjEheZoO8VnkY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655147819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XgFl1fdebbjpus3IirNhckGMxmUVilIMuPsb85EbcJ4=;
	b=fBtikLP/Wc5hDcLd7fidUPxZP/SGYEJDsDcvCqCSQUqG2p4rnpuBMJ/z15nu3fmP
	x+PixTTAvgOPcn+B0RF8hRrVE6wJul7fkNtMzft4yqZG8N+mfN6npEHXeCTHCEP0PSg
	YYl4C0LWae/L8IWBXR0WTPZ6rCnApBEPjLr5+/k4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815e7f70ee-38d462de-97f4-4ceb-a5f0-ad44a54d60a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7b0a7b7e616bf3d9d9409ee4142aa70be70dc7960bb67d58bf433de1945609e5
Date: Mon, 13 Jun 2022 19:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655147819
