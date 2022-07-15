Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB59B3FEA
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 17:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657906612;
	h=To:Subject:From:Message-Id:Date;
	bh=SqaPsTx6VHZX0CgVRtNwxEMkVVZpuiUD6EwAjWL8K70=;
	b=QmiZ4gBh2WOzu8FntU9nsHBxrL1R8gnSfe73zIQD32JoXMSIe1A8+zl1oMBawV0l
	AmOX12EiyW3hK9MH3hMmenj7Elqd/kzaZTk7x3VP56/GssZERuPyxbgWyUtaSYrwLtg
	peMEaMWnDKUEDXCLTiY3XG/FApS0zO5BxpyOSOkQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657906612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SqaPsTx6VHZX0CgVRtNwxEMkVVZpuiUD6EwAjWL8K70=;
	b=HYstIjJrdTVYYrl7f7FSKlTXszxZheZgAZ+JilGClpWYsB/If3Na8QwMvzteh/wS
	bHYlqR5bdDsXyuonCESziHH4alWSvKYXklx3avMfb+9rFOw3vLLFC339dlgKqk0D/JH
	RFPjwwD8hyyAq3hm6rSDGNA2XHEguhCRfMAmnyTU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018202ef4837-6a841d14-00ee-4409-9442-b8cbac6e9826-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ad58ec010a683fc92704c51220c2232443ccb1f3b6e14dea8b6dabfffa69014
Date: Fri, 15 Jul 2022 17:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657906612
