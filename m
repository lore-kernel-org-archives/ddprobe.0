Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 995F729A9
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 19:02:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655751719;
	h=To:Subject:From:Message-Id:Date;
	bh=vLAct8c7nnSipYgdGeNSJFY0/pyV1VJo6Z5dfFf/tko=;
	b=fJBlubqQ5z5sVXTczVWi8JMV6oHXJbeobCh9fp2+WjBeJTj4vXm5ZGhNYXtKZ/wu
	s7SuImmnLplcur59JmJXCWe9LJXUXCOsdASMeSdYNR0H3rebCtK6dtXWwcDgoF5Vx5V
	uNVYnWopDpydodjHWvRWVD2DHio9+iH59y/O/36c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655751719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vLAct8c7nnSipYgdGeNSJFY0/pyV1VJo6Z5dfFf/tko=;
	b=Y3O3WEB7jS1LGrML3Pn3Q0fjVJoXSge1zxGGT2N6AvKhhlfoiuUVSo2NhOMg5yKH
	Zis35YMCwaJ8Gu7FJM6sIeM9QxL+eD1kIOjWRuVGMDFg+DkL1sFZ/ESZWuqGweIlrQK
	xMV7TGWbsm0h8SyL7Pa2AjURgctA19pB5jeffSE4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181827e3963-2f6e41da-8e49-4b2e-bcae-2771531b1a4d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f8009406b28202c04ba52e340d50992023ad8decec0d3139842cfb7d1f10bca9
Date: Mon, 20 Jun 2022 19:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655751719
