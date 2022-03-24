Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A6FD7E
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 23:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648165138;
	h=To:Subject:From:Message-Id:Date;
	bh=19ugWNl6AMtRJU/4ngaD666b9tLM82kIX3lE90GkkbY=;
	b=Mv04sWAcqkxMMC9EDNQtPI0ZKo689C7aS1PgoZ9O4AIg6GapLcK6ycKjxOpFYukJ
	7b7nhGElQLkXgvY3bZKKhu3IBTBGtCkKholYC9sa9bKOTZsvVcP4T7lSkJbyFe+Qsar
	BbzfuEgT3ZaBUCPtRbfTcTyAq/hn+tAFG7/c8NLA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648165138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=19ugWNl6AMtRJU/4ngaD666b9tLM82kIX3lE90GkkbY=;
	b=D/V+UImwcfXJBhYtThTQLN3+EmzXw6VjdUxv4e1bz9bcZxCiKbeUFclBxmPiLJt1
	8l9mtQsM8PRgXqhRmgBwIBZ0LrEn2Q9G5ZYBfoBbyxaILcB78E3UiEnImNOllif/gdY
	bA/R55c9MUOnMK0ZM/13ly2Sco63JJMz6Q9yjUW8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbe4c2f65-b2d97c23-02d0-4816-9dbc-59bd8b907ff6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 21cc451ae828cdb663ee85527b9af150597641b7e1b62bd59fa536167f887d32
Date: Thu, 24 Mar 2022 23:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648165138
