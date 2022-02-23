Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80D596AA3
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 20:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645647085;
	h=To:Subject:From:Message-Id:Date;
	bh=Ox1CjWSbSkeXsIHlz7eJpTj9ZhzAKWYLMCpNLYNUZCM=;
	b=SxIPe0A6iEpMOT8pcMvVpIutSyrSukMymwY5BzaOT8kgm+zxlgqmvONp4fSM8b5Y
	lNss2hEeC6qe1KpElSYZDsG3ph8MBSqFobuWRJsmJH8jeloyK8Iy8FaQ14YnMZHbkrb
	8M75p0yF0iZcb/5x1QadjzcABKnxi8WqOzGkrn7I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645647085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ox1CjWSbSkeXsIHlz7eJpTj9ZhzAKWYLMCpNLYNUZCM=;
	b=Q4dbZhWOuEYKgrv6s/KiCZYNn91VZhpYewyQqtL0UHlRQOeJsB37CkiRsiN2rvAt
	giShQnTzxD+XpbLbdQb3pmbi4IDMabMf6+nQupnLDWEoSqchmMAaLQt1K4Glq3codY4
	oXVLumxYYHADkTbYgFkNYHoSC1TyqTHysu0Utoxw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2835bd41-1fad052f-6191-4c56-9ddd-a7e4f62a1c9c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8cdc4095f655d00ff75f61332aa46a99742a5d0c2a1e4b154455ac38c37db7ac
Date: Wed, 23 Feb 2022 20:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645647084
