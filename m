Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FEE16AAC
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 22:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657664212;
	h=To:Subject:From:Message-Id:Date;
	bh=szcuiATMocn/R3vtFj4kMNJZjOyzLe9rKlgJWODHvIA=;
	b=gmFARoctljiDSM53K6VnL0Vb70ixa8oBpuKBjWviDjT+gEv8eLCDCn68cyaocfiR
	zvuvbzPsxMdhPNPArCrqSDYBfzyR2AqbxRXHXs8VX/7NBSIomA2llKnYd3xm/d/PNzz
	8yp/hwx0R7Yjbeua4EDm+f5I85+wXEHw3J1mXz9c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657664212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=szcuiATMocn/R3vtFj4kMNJZjOyzLe9rKlgJWODHvIA=;
	b=az3XeCficJ/LPDX/ThswdzBALTxEbSuhUQuSg53ierVQzsDJQpf+o3C182WT0iSE
	KdGG9XIFFEiQ4PPArKul8MhtiAWzK8UUZlad/g8JSGTqBhu6c2lxzOH47LtAomT2T+V
	e/Y2UjTKqYmFYea1W1cB3OYbB+X9GUe9G1Ul1DNY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f47c8d7f-a5310c8c-6df6-4acf-9f4a-a4d348a9a0c2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 97eb9bab6a46a4c15b0fd8f782aa93c5ad5a34a0de452ac456db71c5bb9a9bc3
Date: Tue, 12 Jul 2022 22:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657664212
