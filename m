Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77A00628
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 03:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653363479;
	h=To:Subject:From:Message-Id:Date;
	bh=70Qe8LqO1N/X9Pptkd7cypacpTPgfpjvprh9k2MSMGY=;
	b=kQEK/wOo1sTDkNmBEVSK1B+c8K+HOKKiOmLa3JwtUdieKtbk61c4rwe7N+U2WwZx
	lnHn63+RhStPMp/1yGBK96PIIKx7rEZOr4bV7ExT4D1yfmbIDqu1GzG7HyPyYwrA0vE
	3QqqzD/URmR9yN7oNeMIrHfcLuCeLj11D5eFp1lY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653363479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=70Qe8LqO1N/X9Pptkd7cypacpTPgfpjvprh9k2MSMGY=;
	b=TsSSqOaU17P79TDfDKpUW9zvs9QfiuuHsa68zO0LCDbxc4CgZkeFujy8L7mu7iEn
	gAjXO9G8aa8tW3ip7/iBDlbzFg6QhjZgVwJ9ZqhItV4V5juobBB73ai3BiACst+XbHl
	GQC3nXWRJtvIp66GnWQAshvBapBnAq9fmxpfbPK8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f42492e7-7e4238c2-14d4-4ab6-bda2-aedd6cf857aa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cb8e21c4fa09c2e3d51db4aac26423063371e2bbb358cee479d56a32bdb49003
Date: Tue, 24 May 2022 03:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653363479
