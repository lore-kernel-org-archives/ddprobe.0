Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 251457A
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 10:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650106438;
	h=To:Subject:From:Message-Id:Date;
	bh=A/aQNjf7OnIaa1SIPJ6mSpeEvopwBC59guYps/QQj5k=;
	b=Ka0qe4OW6kr20NDANTpNEdWOyynIx6FHweHAXV/rP1EqLdyNAiMzWhHtZppfbSFp
	JZ+4HPdJ+r9kkORYzyfQcpmoPe4+F7bc4bqnkSTs6hvsQX4Qp30w2BTCQS2QXgDG0No
	dXFAqKwcKyJXJtJsfzdPQ7F5hEvqHLi7ME5ssKnQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650106438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=A/aQNjf7OnIaa1SIPJ6mSpeEvopwBC59guYps/QQj5k=;
	b=UEyT65bDqR7BS+1Z0YSR9x/mYinvNhXsilcYH9pwRdXyAuccXjtmjujHcDK4/AOf
	5xJlvDd0YxT7AiskybmkiaKnPt2+Lvv6ZjqFINJjYIAI8HFArfKK+NkinupHWKtCozy
	8QxEgvE+DPsFfaBPgslYwbpLOlD3m7GRcnjNPh9E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018032021278-4389015a-695f-43fb-8b89-01a4d39e6e86-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0f6bf4e98841a7d819ccc7c8fa5a52cac65e21bfc2622c937a60ae3f1fbdb34e
Date: Sat, 16 Apr 2022 10:53:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650106438
