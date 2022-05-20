Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387323206
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 20:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653079859;
	h=To:Subject:From:Message-Id:Date;
	bh=fsk7YWqXxxv7rDmio/Moaz/xSn9J1FhQ15Riy91AIfE=;
	b=YsVJuNjTZjSTBKCQVggaw72UhI4AmqDixQQREO6EQL8sUvvxkoNQi8SUxUbYo90g
	Qti3jNV5B7W75yHV+MsYqZgamDMshbX4Ay+C0aqzDxkZLayJHm4IZ5F7BpS3OHb8aIr
	8tt1q1Q/D41W5cbZzl28GuhUl+MYaUuJvX/MtF3I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653079859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fsk7YWqXxxv7rDmio/Moaz/xSn9J1FhQ15Riy91AIfE=;
	b=M+IO8lLL9gUXyCjOM+ZvlgF7doSAOm68cBwSZ3q3tiDWxOlJfhzhJSK+diuAbdCM
	Abno3ogxtqGQGaV5wAPS7aOVFw92OhpUWoSI7ygUnmM7On5xQOLLEDxP0wKpHuBjvi8
	11xpGUkDe0AEzQYUQeO1jPCH9x/413J5Lsm/w8vo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e33ce0a9-829c74e5-e0eb-4a2a-afcc-5ec22acb8652-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 99031a8f4cce4361697bd19874e493523800315304d348c180e0304b05a7a799
Date: Fri, 20 May 2022 20:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653079859
