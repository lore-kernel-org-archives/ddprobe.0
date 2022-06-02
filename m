Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D53D3D86
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 21:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654204199;
	h=To:Subject:From:Message-Id:Date;
	bh=5MzhDrB52zuTWE7/1aJJZuIKaKFxtJRDjGJ/Ym0Svyo=;
	b=QIvCdIsDbdFZIeX6HS19gzYiXO6mxLM9jFMCR8P5KGDM091cEr0KJ8XdgY8H7KpH
	MhXGzjZHpIj8VKoxDUpq4+VfquOzD9Xb/IoOCGcwi8Ulgn2KvW4Cv6owootYi6p4nP/
	j0I+pSG9fHWSwQTXerJIwcT4oCO+1jk45PACs354=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654204199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5MzhDrB52zuTWE7/1aJJZuIKaKFxtJRDjGJ/Ym0Svyo=;
	b=epMWvVuIlsqCsjtUx9FuLlpCmO4Rl7CQTcfnjrkPvAvhpumwLku3QlEAWKzrDMH4
	GTeWFu9O/hhmDNC1AspELWBNy7lPDnjxgsOvzxon0uQw2GRvlPq0R9i1OgZVcnNgNbr
	y1f1w9ZfrpzCAJXSwWmlOYhpeEuKzc1i+j/zrp5Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812640f15a-4d7d3969-1820-4f9e-b6b1-47657e431518-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fd4270f1cae800b286a692b06c35b63785d295ccee0828c00386fd3bd4d66198
Date: Thu, 2 Jun 2022 21:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654204199
