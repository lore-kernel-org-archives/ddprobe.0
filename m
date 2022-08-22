Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2069C7EC
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 08:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661158252;
	h=To:Subject:From:Message-Id:Date;
	bh=Cf5umPZADsi4Yn2Ycq1yX3JoQb74Q5Y4FfZ45GRTi5U=;
	b=GPzcbXQTLqkfPPpZZT6W6N6JsrjmQ6znj2BorZU1ol0c5YpNEDv5RXtJlx6L5J08
	lYNEtFNpFEuLf06adIOSLTtc1C/fg/5vkiMsRkT/Slu2M/6wsCcS5xKvcfVSQmFlvss
	vpXYHNf4B7jL95Of+IvC1rXQbJ9RopWOZGgbzQm4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661158252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Cf5umPZADsi4Yn2Ycq1yX3JoQb74Q5Y4FfZ45GRTi5U=;
	b=jbE9zUDQG1zo8eT9AAG/dnCakR5jK0rd4FgJCn3hWw4HOpzgZ5bt4pWSmya6XHQq
	AE4EJ9H/3bnI6NExHPWrtZ3LSlMsO8Jxw1F8CHTzwnSyET+feCE+164TopqMU263e9Y
	AYTrxMZgMaA5LnDQ81e3loOd3nP0um2YH6rapes8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c4bf5fec-2d6cc3a5-7211-425b-b3ff-f500f8f6c3c4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 80cb85e77d0308500014b876639643072a9d2fe154e96a70d68647aed81720fc
Date: Mon, 22 Aug 2022 08:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661158252
