Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3124D184A
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 06:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655188559;
	h=To:Subject:From:Message-Id:Date;
	bh=/UZFKvwy48wvvwmNBhRICGJGLDu/DaiVhhViuDRrqF0=;
	b=JCJ76V7TNKl0LVvfSEgYyZyF5sRGUuOoNW8r6vtFEawxrDVMTb8j8D/o8+eBuwI+
	Nw9KgB56eBcOHiL1SbTek07ULPPTgSy/DPRly/UsOhKyNwM0LBWA8uZyfXJWzgAW4lY
	7FjsllO3C97nf7vyEXUCnufGwF2BQUxeq7raUOMY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655188559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/UZFKvwy48wvvwmNBhRICGJGLDu/DaiVhhViuDRrqF0=;
	b=UTNn4Re7Ics2bfohTlj5lgXTob97XAvEwSMW9r3kZ2vxC3vLnEcpQztPkFRaOjnY
	swv7KC3F0tLuzHGa7TmoIoiiV74jI6xFmlvwtylE6gn1QU+uExKnwZiYAwBqbHWllGz
	G8oGlB0/opy2q4ol9X+mua6T8Ux1TuSS+neKnt8k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018160ed1597-011381ee-096c-4dbc-9c52-0246e1528a27-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f73c8138ff85fa67add4887454e76f06eb8a7860be76ea17012c8294233d2b79
Date: Tue, 14 Jun 2022 06:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655188559
