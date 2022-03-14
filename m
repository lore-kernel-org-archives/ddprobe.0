Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 589DA1366
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 06:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647237984;
	h=To:Subject:From:Message-Id:Date;
	bh=UJUzQ6Esi1mc2P88LtlWcyDEo7t/8nSsBXSMVZdYoHs=;
	b=Sp/Nx/roTf5yKBA2o/Ub6XAYmQAmOsg4DI5MJeTGAWCfu5Fx0Y/jxbLlh7dlJC9O
	sRz6kRoIhHqcuRB7MY1n+ohbbtIONbEdMNyVyhzBBG9bDaAU+SYm0OEHIIxHrfipr/1
	qogGGSGofX04oUa9sNIeOSW38kS8uGIWQTdMVnBM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647237984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UJUzQ6Esi1mc2P88LtlWcyDEo7t/8nSsBXSMVZdYoHs=;
	b=R4wZowru79a9XYsiw4wvd3ETBKcJOPbmyKyn8r3oh5fV5ieUymsVkZ6lW9Xuo67h
	nEZa+ugYmsfUE2v7PGyodDZFCt9vGrjCbpQFmkc16FXczYjH231/zi2MnaFEmRS0GE5
	hBwrUTF6MwzHerE0Llx8hMwHrqpq2CuI+jX7AhU4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8708f1e2-38f1e132-4461-4fbf-91a7-186a015e3eff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 84710083d4875f92a780cce4e67ecefcd6e0efca43be280332d7a0c126707a76
Date: Mon, 14 Mar 2022 06:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647237984
