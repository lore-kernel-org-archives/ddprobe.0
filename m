Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B7667F
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 18:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654625579;
	h=To:Subject:From:Message-Id:Date;
	bh=CDiKtxtnkC7VsXvgVFX4UDcHsQYle88Hxv4noRP4YD0=;
	b=RIZpiL/5yQEveuElvvM1LqOrRXtOKFhAPDPLSRdSEy5DkvQDu+T91ttrMoDLsviM
	tZMyo8oLj9SPnmHg5FiicmcEb5s7FxM+QkHKw5HGcN9xeWV7/hNwZdDu1puduaa6Mgo
	NKHuyPSy8ekb9MQ2hCcKCVV9GcnoI4VR94oHvBiU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654625579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CDiKtxtnkC7VsXvgVFX4UDcHsQYle88Hxv4noRP4YD0=;
	b=ZrEKRCC93yCWy/n6buWpSsEVZQEeCo+Pqf/Ryy5QWPlWHl67BTe2yJDiiqYcwdXc
	0VTQtaky0VGkgSPwHFePvL+ohJ4xcerJ9x6E0828wiWVb+/1CXKb9Vk8Fd7mrGRBuxn
	CliLQGkKQ/PiCAC2f7O8ryDflTJyGNlQALFNIqP4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813f5eb0d1-d6a6c8b4-aff4-4af1-ac04-2b3da4e3e744-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bbe910a0810a1faf63017e876ac29dd4a1ba8b71064f504957100ba008771aee
Date: Tue, 7 Jun 2022 18:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654625579
