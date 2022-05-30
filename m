Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A03017E8
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 07:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653895559;
	h=To:Subject:From:Message-Id:Date;
	bh=DnTXwd6y6i6rZXbkN5GNjVaAOhgOuJhV4zobFI6OOOo=;
	b=T4aXz0IQJY9eKez+9JTQTJGSLBHZDe2bFJuhYOBuPPvP1sZLMDFAFUP2scsRVv70
	nFc1URakcKhM8iwXymJi0jLBdB8TZnnkuQ8WA429JjYVEha5bBlh/9TrgKqaNl8udbU
	92xBzIftG9wuRULnrbEmXrhHbGng+CQvL8ESXvg0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653895559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DnTXwd6y6i6rZXbkN5GNjVaAOhgOuJhV4zobFI6OOOo=;
	b=Nc/BSj5/+y7uIuqFXo0LoYu/RGHGa/X7UkfqgxsiuU6Pzdqjn4Lfo5B70iTQNV1d
	3Ko1VtpnHk2htQ0Hd3jfUnUkKovkb0tO2ykdWdmktky3sOWxRCNy7tAoo5FNbTnSfUy
	M004sffTlKRQzkNqpIjYaIolEyElRP7SKb3afAZ8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018113db78ad-64ad62c2-b2f7-49c5-9d93-1e1fb723b1e4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dfcc56e0bd2b42d041250563fa1e709c5cfa2ca0ea7640b818cc61111fab5f86
Date: Mon, 30 May 2022 07:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653895559
