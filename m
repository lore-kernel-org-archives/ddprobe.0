Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324C27B
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 09:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650014998;
	h=To:Subject:From:Message-Id:Date;
	bh=6ggCrzvAeB713QVgMo/Ryq0Q6Eqy8Pf3u9PcboftmTs=;
	b=aCZ6Tsp6l0UwOKQ/lT3wl+HiU6lwQA8+h5uotin00RN6we6o1h7tc6wlxcByXMki
	Dt9FS8+uRs6D0JQ49j0HHwcNfGFVIoLjYHaAkmFKmeJc1HqUCbBkUpbCcaxczbd66XG
	06EEX8KQCww8hC++pTOcsyGQLtCQsZFT8SsDfO8g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650014998;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6ggCrzvAeB713QVgMo/Ryq0Q6Eqy8Pf3u9PcboftmTs=;
	b=k3vyNUpWFtZm1Z+xC8fc9joZgSktJW9hr3bt44kryBlxY0eu75BG6FUPUVJmAH02
	kpEGIlmrI9/swpdgvHk4lTgzOohDlNCNoAvkIneZ6QMmOn51qa76xl+35BFvLUlFizs
	UWGLD5rYE43qFE1+mfkV+BCMn605WDL7dcAlMNVM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802c8ecf00-dbf1d24c-c7eb-45f3-a71f-06b8555da88f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fa43972017aadcf0219e2094f909cc7fdf703e7af8059b31e74a4bfe12a7056f
Date: Fri, 15 Apr 2022 09:29:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650014998
