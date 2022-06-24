Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122DA7C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 10:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656065812;
	h=To:Subject:From:Message-Id:Date;
	bh=0mW3daUTd5H+mUVvexbjAni9dbhtZaeA7jfCtfDgvuw=;
	b=Np924gdfnJbR/1gwvNxV9k9bMCpqrZzQdKrgIZ7aHtGkY8bpay26Fh3v9ZnOT2L2
	aZMuIqwodNsoiKO8TZ/Zq65DAsAXmRXLxCGXPj8Y1DPvc5NaYjH/eFOME9HDDV26R7W
	9ENXp1zQP/HftLUIKnyOShqXWMJaRYspGVN85KFA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656065812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0mW3daUTd5H+mUVvexbjAni9dbhtZaeA7jfCtfDgvuw=;
	b=MtW/8oBvqlhz9fgwxG7yRRRGCfBL1dQJ2nBR7IbYH20j3FGE/xCw+kM9R85Q/P15
	8WyBjFW2fQP7II3xzHgMp93vC1rtUg6TJWfRpALRxIJ9MViqbVmYZS/XnYsdnMQLpZw
	RyIM/zkLT1ARrQJeP5d3vmwbMo08ASP3RnX4/yZE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819536e72d-5950318c-6eb4-421a-a255-fbf8f39b783b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f5fc82fe6d3fbf38fce85b96ca031a65636d5ab542057ed104376b1d57fc3976
Date: Fri, 24 Jun 2022 10:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656065812
