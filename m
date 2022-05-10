Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B1D01FBA
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 00:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652141579;
	h=To:Subject:From:Message-Id:Date;
	bh=YhPbqaqG0LpZfflCkIzCqxEgrM1n5N0QfyfuMZeLMwA=;
	b=BPYppRCMIyANmAUeMh+2JWnVD07d2TyqMQHDJNifTc0oAPj+n8Ye3cSMELYtfO8P
	OtU3nllq6UMQPq8PU4H2bgEtF446/w2fFUezICSjMHMGNga2XE+q6P2B/pYWdOE+sIX
	uvg4Qbz9hUtBjmVbAZ3Ffe+n5wRiV92DXOUBvT9M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652141579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YhPbqaqG0LpZfflCkIzCqxEgrM1n5N0QfyfuMZeLMwA=;
	b=d7oVwJLkebhkIroVoW0GTLMGguoLM0uS34XKMC8gdBLaxmWJUFFUDL/yQdXMX5Dv
	DGHa4xiYvyNP3pPJE4VXEdv93TgJ2isQk5+PhL87x3/SUB9EpEewImbgaBv6aguygVi
	T9Bzkk3vF0VCcqocb2zDHdwl/UYiWe72/agk1X5M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ab4fdc21-dd34a311-8e82-4116-b558-0c609c19a404-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 25a708606b3acedc85141c4d582c6dac2de19d41443b33a57803800935e5aeef
Date: Tue, 10 May 2022 00:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652141579
