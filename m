Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E903C37
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 21:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658179012;
	h=To:Subject:From:Message-Id:Date;
	bh=c7RZzc/iNBtAsjt/8SRqByUtHtm8TZhhVedFig4W3hY=;
	b=ZAScKOusHlQQMQLfK/1y9jRRhbQRoUpd6fdDzaEnnkLey7jijGiqhngmDgEkGfWo
	Sv8+LDc6rIL7X+0ibPR+rYqU2cl4DUuHLyxGmNoZDhGUGqHHtE9+hApf0q9RMMtSOac
	xrrD/UIfKY3qNgNag9zoehxDZ5ra9EGIt1v6gucI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658179012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c7RZzc/iNBtAsjt/8SRqByUtHtm8TZhhVedFig4W3hY=;
	b=A2Z4Esq86L/oxhLSorFdqpo0HR3rvu5g6l172tzE/S/mTrzlhiNfKPJDFa1dS06t
	RaIn72EvGOv/DNSKaNLfAtGUXfSt03weklBCozJLArZHgMsCjON4hErkob68lz8aGP7
	KQSiIPrmmD7qWxLU0JDfSOExJVi9/h5SeRDAjFok=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182132bc6fc-652432de-fd19-48c3-a99e-5a6b27651022-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d4207643fe111cc9ffd17e45d784b789417d781b7258801a4afa287ab5551283
Date: Mon, 18 Jul 2022 21:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658179012
