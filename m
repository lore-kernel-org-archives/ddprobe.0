Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 516EF46BD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 22:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655246039;
	h=To:Subject:From:Message-Id:Date;
	bh=GhNXIx8wAdcNWoFFyKZFxfYmwW8dzULd05+7qVQ8JmQ=;
	b=V+H5h+HvCvI8hzl63pLBzqnR/FPEqugoq0teZ47op/PjcV0mTptIdy2CobyuAs18
	Ry09Fs/LDc7I0Oe5VJHUth7p18kS06GFVLedBIz1T9MT/F2fMvTT8XkNgRJ/3ecWpEr
	Wts3qGG77aLYkD0YNR8Sa0hS98ggxVM5mcsKsClE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655246039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GhNXIx8wAdcNWoFFyKZFxfYmwW8dzULd05+7qVQ8JmQ=;
	b=KePPU80nKVVxmDYRLxpjPRK7Jg+wExf0frEkpGN4qGo3mcDeiZQsx7DwwZ97dfen
	UT7oDl/QGXIBDmiYElY2wKsvLYRy5y4Mhr9wEqKE1Cwmz1+Z3fLwgTORdRJlgZCjk0o
	6OpqeLD1Ab3FmrU+DV0xyPnJMdALZIMNasF5QLT0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181645a299e-78ef2112-dca2-442d-b551-67210a4e36ae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d3732d17a188579ad96f5c26dc0d6464d069b5a64155aacfac427c2d99711eb5
Date: Tue, 14 Jun 2022 22:33:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655246039
