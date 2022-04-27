Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213F733E5
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 19:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651088458;
	h=To:Subject:From:Message-Id:Date;
	bh=FC0Ed5bRF16jD7m8jGyW3ZzFoU8Wx0IuXL8m2Fkrz/k=;
	b=SRKF8dwuuMvsrVsWzmCZu9kPc2fUAfa0mCBlZ9Shaf7Ocpp6F3Qbba0XHlqbUQJU
	VfvmK3KvdQbx9XpKWnKhepLh676jPJOHs/1M5gmW5VxeJL1qErGccXwWEJGyd1pszFs
	HIS8PoTCYHM0A4RLs1Y2Jgkhe8+fUs9bSYjcLzcU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651088458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FC0Ed5bRF16jD7m8jGyW3ZzFoU8Wx0IuXL8m2Fkrz/k=;
	b=YwAzwiwbWlk2sdUEQ41pJgWTo65L5I1mraYO+gExGZgjzPC8acKgWRWq3KPaFHPC
	5/o/q6uu1WwhOowgfx8wuL5zsnQnU3mICPIapMzOEUbGHzJXpBUzvs+IQmOMpz7Zolf
	bgx6D+p6wPpAKEsDMMV76MuNdS+E7Gs5kX2EHAik=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806c8a8238-25d47c1c-958a-4223-9292-fd30e59d0c30-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fbdd65ddb7b789824fdeb3114978ebcf5b6aaf779915e46d9616e2ea8ab0a672
Date: Wed, 27 Apr 2022 19:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651088458
