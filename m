Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EABFB20E0
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 20:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658780812;
	h=To:Subject:From:Message-Id:Date;
	bh=yhHnjfPZ6TL+IVBmL565XAaaWeOkHm9hKQ4+7rbz3Nw=;
	b=i+7iTeKKDGFk6XUCn6Z1P6BSNW7u4EhXnsNty6UvR+Zov0EZxfF0+H5KUAFMZ/gy
	yTse9xhXaKs2LK3b4jQR0nqtoR17yE8WT646heoEiDZK3QKKFPzkK6sWmJfXMhRPPbM
	Yv6D6mCGaWgyg6MF8GWGfzHOTMo/g3Kpxmqvab80=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658780812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yhHnjfPZ6TL+IVBmL565XAaaWeOkHm9hKQ4+7rbz3Nw=;
	b=NIWr2D9ZUeOeU0qPc8/jjCXFH7zXV/+UhWQADXT0c0SnZCPwJe3RunJvJpyctjKb
	TPV9TC2tMGD2snVptpWblJ/M0WFAP0qURHUyz9BCzJpsPDLaCEL/+dkMpslhWn1OBFQ
	3FMvmadvoYMtNlpgyDxDGL8N0+1QrmzO5mpP0jiQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182370a83f7-9d253394-50be-468b-a258-5c3e2d93ce4a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1f88f5cd587300650668c9ecc1198a8ca68df7c327f15b0494aff045f7cbb9ed
Date: Mon, 25 Jul 2022 20:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658780812
