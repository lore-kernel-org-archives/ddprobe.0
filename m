Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0969F7A
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 12:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656504412;
	h=To:Subject:From:Message-Id:Date;
	bh=WOPck5qCTJb84zHTuaX8Q1QFAat5egeRG5ty6y6Ppr4=;
	b=ONcUFGTyJAkVBCbwdsyxxdyi+VBTwDRlXAorArML9jadFzF+mz4SahzckncmWzBx
	JNuiKAs3r3x6j381i49xeppVioGm8HuXT4BYeDadUNeT6NlINmE9H0S19TZ0HdlKk96
	xu+eDrVT/ic+sLwW+hNvrnQP4HWUTd9CZAn1c16k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656504412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WOPck5qCTJb84zHTuaX8Q1QFAat5egeRG5ty6y6Ppr4=;
	b=bABQNUfpIc9oPWyamDZcbXE1pKLtDUqWbFh+czjApZGNF3kNdbN/Zl1w193/QG0L
	qyT+eqpthMn4HbV6XUvUIGL8AMoTEOTc5evlDcVblqOPYFe3S9vt+dXaEZCoQyNosZI
	bIk+KhxVKSnUfPnfQ9WM8EXMN7NIA3Z5Oqq60umQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181af5b68d0-db8073f6-649a-4a9a-bd56-f45edd9e57ef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ceaba54f69e48bb1339cf380ca845ef5345b05165f792a8817b6dfff84499053
Date: Wed, 29 Jun 2022 12:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656504412
