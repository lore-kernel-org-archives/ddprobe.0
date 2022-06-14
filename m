Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB0407C
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 03:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655178239;
	h=To:Subject:From:Message-Id:Date;
	bh=/sbpX/fOAbjAdDCkaLoB9wmfJrp4k2qxzUr3pU5Oddo=;
	b=LX2Bwq4e6m0r7RbLeJbyHCM0cAZz0sUTbdlHvLl5c4rUsUzBOTNhW/xZXRbfwywK
	MiFpqQHKI27Kculpqv52RUAmXts6mHl5p5IG9TFESAUzlmI/Q+4b1acpOC3+SbXCtWh
	yqHDz07auysNwl2FfoFGk1uMjKUQOyBmlUV1jqwE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655178239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/sbpX/fOAbjAdDCkaLoB9wmfJrp4k2qxzUr3pU5Oddo=;
	b=HqPkbmHrRqSAey0jrYFx+PdgdwE3LqDI+1Ek537a89cU0QsnqUkfhrzYS41eqkwk
	W0hR0ECfPV1l2mTeKwsb6zVUp+hBH6hBt0aF1n+11SDXuqTfGT69aH/QL9aWQR7t7l8
	wGV369SbaRNgt+g7GF4dWbDFSOxuDNMqWz7e84JE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181604f9d0e-c6d5c25c-fa42-4588-9902-4481f7a3756b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 05d2f32edae688098379f9ffd6de5e874e2116024e93ecde90dae00f70f958be
Date: Tue, 14 Jun 2022 03:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655178239
