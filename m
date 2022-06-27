Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F073F3229
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 22:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656370612;
	h=To:Subject:From:Message-Id:Date;
	bh=oE8k/pMk1PnSr1p5z1KfynIpAjmIOKtmI1BrIlARtTw=;
	b=JIaohW0O3mSTizchKb+P65wqoyPbX7CRJX6n86isuwnFzpVaOTXQE/zkQuxttLMH
	10moLuIy3DilodpXT16si7T+G3Okin2exxQ0c13sNXykpxjvN/KIvRyFNIO0B8jAs//
	3PGFpjYlhzYgV6vqHkiUo3w1wq5gpmMDhflX1uBU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656370612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oE8k/pMk1PnSr1p5z1KfynIpAjmIOKtmI1BrIlARtTw=;
	b=PViAqIc6b8REDGmzf21h62YinRnsaDKjoJGeN9trXyNLC9Q1j50Y1luhqaRx5bit
	RXDvIwZZHmGQpPunSTpLcr0ib6DRzTQAKo49l7huSxN8M7Yh+FRAGpQ4WpyXM4RhXPZ
	jOJp+EX+wecLPhbxz6LUEFB4n+UYewb0VO4iQCZs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a761c840-395228c9-ed9e-4c7b-8d35-51d5b3e03e2e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 708fb8264ca770eeca4752b88b0f5322b62a512f4e202eeb1dc937ac021dda62
Date: Mon, 27 Jun 2022 22:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656370612
