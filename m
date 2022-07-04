Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C7497E
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 11:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656934012;
	h=To:Subject:From:Message-Id:Date;
	bh=mw283G6kzFnlnlVbKeM3gj8OJcaiBoEjl0hB52/MioA=;
	b=ipUmmpt8QgI5PcsoTzfoqfvinGllj2BH6vlftDbgWpJ19bFR28JY6OQxuxo0utW2
	CwH7eYM6Arg6Erl08FgqyY7RuRzWBcOoSES8gL+XR7v4+D/t7No9Sw80xH0Ottjnp7n
	IXQCY386pRqSqx/OGwRFjSg8l0pCsFABPAdcRVqc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656934012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mw283G6kzFnlnlVbKeM3gj8OJcaiBoEjl0hB52/MioA=;
	b=hWsybKRQu1xkLM7hrb224Xk9dBnRcM009hg0x79rF4LNFi49UWHgEU6/CIydN6MV
	QfusCCc4xj5xh5EMnadlJznd3rvwQrDJztl+Soffv6juM1a7Xh/QE5ZMDG68VUMtjjz
	toQIrb+i/6aEFTlomwmLtvECC3Bh8xySLUF2q6mY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c8f69570-d411bd9b-6410-4ea2-ab10-5a54f58d199d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9674913bd659bf9bbb5f15944c32ad5d1d4a3ed4e4c46c66869bf5a876d97929
Date: Mon, 4 Jul 2022 11:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656934012
