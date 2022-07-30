Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5507E33EE
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 14:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659189652;
	h=To:Subject:From:Message-Id:Date;
	bh=AVqjtIIrwz4uqIZLOHb4fxy/Eudd3wbm/VJRIhvsJuE=;
	b=DiY8QKTD9AjxOT5QHc4px4jn8/enAf1ZCplMDkChKe9BbbvUrsAxAybu0h6a450Q
	nhSMS933Ui1Flfxpk+ApgikS662eqYWo2O5I+rk0W9PDEYFmfKx2tds/uwuT0hOepZx
	WN55yQ8JC3EMm/UqfLjSmFKLenR/as4TmcMPmQU0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659189652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AVqjtIIrwz4uqIZLOHb4fxy/Eudd3wbm/VJRIhvsJuE=;
	b=RcsbH4mLU1x25Ulxpicji/GAUHBhvitAeHhTpQBJdw/Wxd1tJysanK2i6m0bb9d3
	5mOuOdDiaF0iSuRBIgHxBYi+do1j8er4/N7x1DEvFMrv5Tx71V+VBV98TcVz3idSTRP
	BDOF62IqWRmVteCZO+n2VuyXdaFZcV1GIuATZRPQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824f68ec65-d5b5fdec-b04f-4884-bd15-9651d057c8b0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4e59379498debe78959958e743cb0e846f4895458ec9634af6a87fa785b63d15
Date: Sat, 30 Jul 2022 14:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659189652
