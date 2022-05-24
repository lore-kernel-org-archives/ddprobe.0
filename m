Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67FA13D8E
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 21:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653427559;
	h=To:Subject:From:Message-Id:Date;
	bh=NdvQkjqprBAT5ej1H+bppNf3cV2RqBoFscIrDgU12vM=;
	b=XKEZB1/zxAchGUrEkug9/UG5XNDZ8PREHfub2aGN5Fgn7Uhn/u5wN8fMVvK1a91R
	XnJtynUuT7Qlb0ux+zqplip6MDvg5jbsPb6BDz7hcrElofaOATsIzXxX4mYGPiWwLbJ
	pZvpyD3E8F5apwpjM4dIWrKUCf1lLGoCLHGrRM+g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653427559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NdvQkjqprBAT5ej1H+bppNf3cV2RqBoFscIrDgU12vM=;
	b=QNxdF5VogJFawYF4s52WkjeHkI7iH7VT/HIeNOXkyIbrUC3xj/xuYtu0K9zg4Yxo
	0WcWbeDBwy1Rg6z2wxgmwwUnRa/M2q0ibjfNHYM8AXBOGKyt5xYuV8W+8y/eQtW4Lzx
	a7mbfBsS57SoufR508GmqQZOCX+aeZQSk6MXjejw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f7f65b8e-1a93708e-c755-494b-a0c5-4684ecd4fedb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ad3e1a166cd98818c877b810f32b67ee9d618dcdd2264e56edcadec870345ebf
Date: Tue, 24 May 2022 21:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653427559
