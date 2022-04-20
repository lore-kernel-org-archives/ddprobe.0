Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54F4C10F0
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 08:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650442798;
	h=To:Subject:From:Message-Id:Date;
	bh=3yGYrV8ZHWf4WPo97ca1VtjcwcHYr3gyxIE4PhYONnU=;
	b=lJ/Bl61wY5wkjz229phmHcSQNWgWmujbrx9gVRCorTwty8RCH6gQiL4Ne8pUuEzM
	U09BUjAWfagG6aVGlBmAXDRSbpZxrbUeC2D1RC9uF/VMdAUxP9NpuEfrriB20nTVI4m
	iFVb/zQ5PqbbNUHO91wCI+ppBmn5f6jifokoA5Ak=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650442798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3yGYrV8ZHWf4WPo97ca1VtjcwcHYr3gyxIE4PhYONnU=;
	b=HAay3s2dOFXAcM9u8YvZNmAiNQCE1Axgs6EBdhOMsPhkHQpgAek5tEsKqLfOEmMW
	Q1VK2NE4IPWMpUjc7lHjbFz0CGEveRhC53El9QjFI4Vy/42hypBJD1OXNWI1UnuGJ+1
	QighxZka+ZnxHZXbZiVTBfVNBB4bI1nZYB/iFZvQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180460e84a7-e23d440f-b8a8-434c-840e-4b16c15589dd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 749cc04f8211d43d11defd1aee562d151fcb3b461c3cecb577dd1fd625dff280
Date: Wed, 20 Apr 2022 08:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650442798
