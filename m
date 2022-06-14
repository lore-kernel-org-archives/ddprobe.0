Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320A11851
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 09:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655197379;
	h=To:Subject:From:Message-Id:Date;
	bh=59YXJ8JnKY3lNPoUVzhxCLtNsa/7BKdEWAAWVNNGpi4=;
	b=kPEAYIEU5Bvr0vyDdYY0AqZ1vTlAi/HZVgugkmsLKYTm7KBQwmuGl/TJk74wMZP0
	IAsOx/MTNO6nzfY2BhJIcfFyaoTlbXJ4Iky3GTh/RuQ+FqLsDeruZLwpB9hQi6pV+F7
	OZ0pHeL4melYo/EwN/B0FW0+XeJO0Tyt41rMsy9Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655197379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=59YXJ8JnKY3lNPoUVzhxCLtNsa/7BKdEWAAWVNNGpi4=;
	b=H+/WNOYQcx2mz0ZScmFe9rJ7tXLEvlq5fyCrvt42U2pgOLMpGkplHAZlehHIYR2a
	5rFqPIACo7WDllnliEu0Ql41GSnJZZc6tcSP6yWEL2TJU1NKowzVZ2zU+7ybNGo7KbX
	FLPxe4JxBJoZvOWqU3vVMppoHeR1kHAco+98QjEs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816173aad9-9da34a3b-1e57-4d44-b470-e75f6b5419b3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 54f8be87cc1d75b8c16722517719883a80b1227d988a48db219101a900e57366
Date: Tue, 14 Jun 2022 09:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655197379
