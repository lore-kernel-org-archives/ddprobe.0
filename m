Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353867E
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 22:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648420318;
	h=To:Subject:From:Message-Id:Date;
	bh=/dZUs67czXUXjzHQL3xJcSsx/BAIYrTCrcbD8PxgXD4=;
	b=Z+RqtOZc/gZAfC81RQfeGm10kBdCZdxX5J8dYrYlswULbUxTavwNJY6s1FqglgQ3
	KI98ux8VyIMsZsBaKxpTgqu6+tu9mzQamEogKe5fict5k9SiWb3RKMbO/xbKaC6r00a
	4G5ee/CSD64/Xaq5s6w3MJU7fP2s9CVkzfq4MNHE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648420318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/dZUs67czXUXjzHQL3xJcSsx/BAIYrTCrcbD8PxgXD4=;
	b=eT58o6XxDSiqbGcUMABcSwbzQ1DFDI8rLrU6r2D0JE/2dy5Q9ISDTESh8y/yf7q1
	YKT2AqqexxpsK0B9T3oxZlFZ4CpGupnSlna+TsqJNZlCng0yde7BUXV6Xut5VXAJbz3
	VYy6B7GxqwlYXrTBWG4hGruCYp6tihiMkkHbScMI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcd81ecad-7dfa4afd-466e-48df-a7f3-b4ca7ffe9759-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bcc1e03c3bb4c16787305b9ac847b2a79f8ccca8488de31479c1d53556eb4857
Date: Sun, 27 Mar 2022 22:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648420318
