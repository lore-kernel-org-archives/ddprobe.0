Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3152A7E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 01:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658539012;
	h=To:Subject:From:Message-Id:Date;
	bh=YpQfSbvqupl9Y3V69tBhUNv0vDd1ZiPyokk9/gic+Uc=;
	b=ZcUYBP9DIkDSZ4TrqIt2YM0tyB8L8/5/Z16C0rRs9lftFRsFLVkcGWjYIk2Z7Z8H
	x1lLNdKtfUJLc/rQgq8tIeH3M9mdAAsCKilwSOGBeWBRJvbAmdotFM875IIxHZMck+v
	G0FqlM0Uw5DdQvCbwkLQNSknMIvHDdT5RGGKR2sU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658539012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YpQfSbvqupl9Y3V69tBhUNv0vDd1ZiPyokk9/gic+Uc=;
	b=gPQuNQijvcNvEmy3jfFmfyN9A1CuVHADVc56/LUPjAltZguNs30skAJI7BP/eIG7
	pRL5WCV0Lldwjsw1wYDjTC9fvH9bmq/DipQbZTCr7KrU8BTdgDUd61Jh4D9Ir6IMvab
	RHA4oPNkmPDXuKa/eaCuA1Um+iVwRTw4EPyQPK0w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018228a0f0d8-5982daaf-a1e4-4b73-aa78-8057b744a820-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 44580e5f740f32d8cbcb94bbf0db5d660536a769cff0bf782905919a98716d71
Date: Sat, 23 Jul 2022 01:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658539012
