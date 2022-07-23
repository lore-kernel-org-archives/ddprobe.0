Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0848B7E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 01:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658540212;
	h=To:Subject:From:Message-Id:Date;
	bh=cYVIIqYt95DX9dXJz+ifZoEVhzwyjk3x2gqMUCN6pns=;
	b=AQMwFx/XEorZFUmGCI3Rq1maFUFgUeIJqkaUQxwkIhTqA9Yqn52FXv22qrhPWxpd
	U9LfuXgzBsVfNkT62Pmqs+O5G3pK2MG3zid0uDG+sPsCL3VoWjmBbr9ONm/mjxBA9Wv
	zw9XFbF1RdCYqR9BAhLS6YudEApwiVspXwG0hByE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658540212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cYVIIqYt95DX9dXJz+ifZoEVhzwyjk3x2gqMUCN6pns=;
	b=V1o+q+pWdLH7D5KxIS0/6nrPR3tAwcheZLoxSE8cENGP55ey4Lzxlz0JWA0FccCP
	iWjD6nHw5zZqzA+427+zYbcvEaSV9OxK/8dMkC230eqVcCgvX0zezzpaCfXoB4YShC4
	G8vZvzjUGpUerbxaf2x+SUWk3r0CmbvZZKJgFuUg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018228b34054-79d7ae71-65fc-4048-a57e-6bd8cbbb9d54-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 998bac92a46fc07b8f661559e8cd12b778c1159e6aedd985ae6783e5c08bbc4b
Date: Sat, 23 Jul 2022 01:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658540212
