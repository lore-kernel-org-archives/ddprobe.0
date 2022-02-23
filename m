Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9905D62A
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 12:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645619485;
	h=To:Subject:From:Message-Id:Date;
	bh=OjmP2VYLRyj9SokRCjqaOBHmRBhA1hLt9S4DHk99fKA=;
	b=kEKFa6up1dBmEvkTdLTejZk29ES1t8NUvZNK6QY8JuJ/R21QDe5RrC+PQA7O+VH2
	1oncYXmWUyQgY0JWK6Kz5m0EJp5WCyoO/ZmJjYwGsgZhl3YacWT0+gdK4+N/g6jvcyl
	0hTo/DdQU+oQB/74JaYJSVeTfblnR8EMd/k3SaWM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645619485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OjmP2VYLRyj9SokRCjqaOBHmRBhA1hLt9S4DHk99fKA=;
	b=RkWgmbSzKD9Yk4AQIxmsTEvreQ+00uLRBQi786sInK54vcovVvyq0AyGtg9qtcS4
	179gA3z+p2gCsQrjJFpgoceb5+hFvvl5W1/WhAi+esq3YrTfc2nNoEqFwYFlF4+INF4
	IK7lz6//zBtQiELDcuuIxARqUjGpX+7zgkp1KjXE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f269098cd-7d5bd23b-8cc7-41b4-b43b-663e4952e6c8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0e1e90dac7bed9f42e5b6eec7c394061d109833bea2a0e86105a3b17938e1f57
Date: Wed, 23 Feb 2022 12:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645619484
