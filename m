Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 849025580
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 16:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645288585;
	h=To:Subject:From:Message-Id:Date;
	bh=dJwRrbzI//68e5r9udi+k9PT9LvUvaI+J1clDh4zufI=;
	b=IFCD/mw+PRohFqbex8XoGKhfIUC7SqgtruoLmTxOMjN5ee89iMPlnGxJu5h1YXtZ
	nW7vg/tShK7+fd9is1cS/orMI1OLgCStvoCwi9l7M3niDZeMwFbOaJJX8irUpMIIMvl
	2YjEMrqxKa0DQvd0/e6WSdFW+785UTtkb0VCqtxk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645288585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dJwRrbzI//68e5r9udi+k9PT9LvUvaI+J1clDh4zufI=;
	b=JnYklIlBjeo4t9Mu8GMubd96v2AupGqjEAqpyxuOiyRIdObtM+R6xXEX3Mrj1PKD
	7CV7rrIAnRvO1h8tm9qkpLd5gAR1NACdgUtADbk06fWpRnQ2CWvComesa3K1WSjtl/z
	ivkcjUlWcMm93ATTZUhA2fGDfr/qHpWM6ppWngDc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f12d7764d-a9e31fa1-7181-4a25-8595-36367915d61c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ec8073b200a1fdfaca8263302d9d8745a3969e620ed13e1b8d26ef0925b174c
Date: Sat, 19 Feb 2022 16:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645288584
