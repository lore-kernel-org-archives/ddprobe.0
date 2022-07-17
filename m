Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04B8062A
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 01:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658021212;
	h=To:Subject:From:Message-Id:Date;
	bh=sWBy5NefYie+A8Y2gW3qzph1EXlrRwKKANkJS3sYlXk=;
	b=hUe8Go7mNGbM56DhfWgfxxtWnlwe1ds6kdubuKsE6ityo+q8YHs5/ZEk2k8DZzPZ
	RSSL0J0NL7VJTxRCu+Zt3riWwm3nq4y57SffvD6nKR0W0yA754a1i4ZvklB7OlSKoCb
	GcfBZWtzk01EYPKD3PAtIW6uSQ6gRnw2nJYxEVzc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658021212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sWBy5NefYie+A8Y2gW3qzph1EXlrRwKKANkJS3sYlXk=;
	b=SsvqC31g78Rokv8zGUCRuUQWMinngREU40tb4DR3GHxZ4tVKz6GDTHKjmp3UM2zm
	L3N/wvPeZd8rtMRQ66k5FaisNEpJzQymLm/tTwc0Kj//mf4xhpBfhb9pcQxcIELK6Rg
	fxJp3CQHoZvsbRtYKwiv7peunabGpPfQKZsqPYEk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018209c3f081-17fd0398-a896-4327-974a-7a4ec62aee26-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4fcee7532630afbb479495ff93399c17ba63d32e4c78b0d926bd60ec0cc42b98
Date: Sun, 17 Jul 2022 01:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658021212
