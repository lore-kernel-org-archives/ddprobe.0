Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C1B933DE
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 23:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650928798;
	h=To:Subject:From:Message-Id:Date;
	bh=Omsse/sBaDYA7o9vpvbtrdKDzZorocXk9AUFSR3/xT0=;
	b=IhH0dMtaJt0wBuJaXb2u7iyE4+CPGAQcMuOLMxiIlSFeZ3Jv1FnWa0lR5s12hD9w
	sBr8lWGnl0ZZOfaCfeR8DHxC5S+LMCZXZu+cOpfkoT2mBFvdRkP/nPLpgbNjn4NWjR/
	IDUB75TwnoLzr4RVF8Ee3DrmAufnMbgu8xej4ImY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650928798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Omsse/sBaDYA7o9vpvbtrdKDzZorocXk9AUFSR3/xT0=;
	b=GihFHmetJc6cM1UTBy+JhYtEuJc0P6AQgY/2KrabryvQ33jgcXnDOX4YzpvEeys6
	slZDOiqBES2vEZy92lRL0HX9CM6vKYCxQnPcvkakTYHKujSH6uAAAswWxqr8mWgjuMV
	X5i7lOCI42UDAZPhJMtBAPecnfWK2ujEGof6VV54=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018063064a88-fdaac6bc-67c9-4252-9be5-09659233ef49-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 61e90c3bbd8d6a6af77c29d2df8ebe7988447e1e59f23215927fca7734e387b1
Date: Mon, 25 Apr 2022 23:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650928798
