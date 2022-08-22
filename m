Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3793621
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661134853;
	h=To:Subject:From:Message-Id:Date;
	bh=0l1FEGZAiKbcq0p44pVC/ZY0fxvq0fpRtn/zICgdaQU=;
	b=HwmZ4iQj1nAb5OhtTajuHMSYDLqAYi4/dJJ5IrOdy7ZaOxlZEynqEYIM4LJUY4K1
	/IdbpH7nlNYFJiOEhvuC1j2B+2odI3a3bKaIp3nio8JsSNKxpXjalrzSsANGC2hKgbA
	4hDq4rRBHd0vQ3mZq1m1egUwo8cp/vyA+5LN3Ea0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661134853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0l1FEGZAiKbcq0p44pVC/ZY0fxvq0fpRtn/zICgdaQU=;
	b=H8EzI4FFvK/f0eTFbo4wlFNVA7uK4nGT5qLoABCErqXvcXAwOgiHZW7DiPhoNmZS
	U+TgOMYpS3N19cqJ/v4/FZBflrepbVfNkhgMcuEoct/bZqjSJ06rFNdpqFDvww6RvAz
	RVNGaiJrabfCXzjc+RVR9flqnp5d/9zRnOownhUk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c35a51d5-cc3c3b6e-53ba-4980-b9a5-e2b98b6cf159-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f7637c3f0d6e570cc6c881de143a9dcf19b891b942af08768e4ca1f10c761cc1
Date: Mon, 22 Aug 2022 02:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661134852
