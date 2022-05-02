Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46FE617D3
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 12:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651493698;
	h=To:Subject:From:Message-Id:Date;
	bh=E2JevOIzMyFQMiuN+cJAh/0NbcHoOjIIOn0g7b+j/h8=;
	b=D4sIlQPLNjnVeYM/NR0nvTeUxCbk5IWdgQtfdQu/wX7JF1z6WHpOg6a+RNMUW9wL
	dBH+IEjroW1xF8hWRV3tU1JGdlncU47Xc8mJzjxHOxdSKzwxj7/kPPInOXve+OW3Q2I
	rdbd6+j949ybhzwrtL5tMBEqq8RB6rWTgcKr14NU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651493698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E2JevOIzMyFQMiuN+cJAh/0NbcHoOjIIOn0g7b+j/h8=;
	b=B+aquS3oJ3NkG9oEoejwhhq6qNcA1O7dLDZHQbN4m/ye+IfBwvCriT8oZ1YMJ14s
	LJebBGfXQ/t30oOjPnzPSbh16ZBJUqct7glVyH0nlv30Zm6Wl2SQlbl/Shh9qVS8PB8
	AODTAwZGYiXyfRxY5qJ7Bb1Y7v+/CXprlzajxa6U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018084b1fac6-ad6a0c17-9a04-4952-88df-6fa27a8a2fa0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9edb918978947dce52ee890324132f878d6f030cb05f79eca30a7237642c007b
Date: Mon, 2 May 2022 12:14:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651493698
