Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC5E762D
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 10:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658743612;
	h=To:Subject:From:Message-Id:Date;
	bh=BIxnImzT7leXOJrI0RQntyrV7VfFN/4bzy+6KzMVdJY=;
	b=S7obTvHSpqhjZC9H1qSg8TXC5kBq4+nooitoTATdwp6nNxNu/bwRgLrEseMM+539
	DHbD/oClqmDx5ySLXJs9lLOZ3USVazC0h6v4Um9zD83EMKVsCTfM1VzqoNo2AmvB9kL
	oEteJ3JuPUtdUCBvHFvcoynkoHw4/Hl9TuSELRHM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658743612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BIxnImzT7leXOJrI0RQntyrV7VfFN/4bzy+6KzMVdJY=;
	b=hpZcaT+MY29SSz+DDoHK/vwuF+nlBYH5hBxOAvNOQycqs/Es0B4dhxb6zUnNK/my
	CZgUbfcHqvzjKJG8/11qakzuxliWydVNtOr/wM6RqNRrQiNAOeGrJItPGRSF8oe2OGk
	XHp3CxdffMqc1tTN6LxGQx6NDKlSQjurViJnGMms=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018234d2e35e-60313704-82d5-4648-8fcc-d9341374c23a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 537eee45ce6cf40b4bdb66654d7b314da2e4213f0ddf30918a19c05d5d344e0d
Date: Mon, 25 Jul 2022 10:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658743612
