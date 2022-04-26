Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13CAB7E
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 13:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650979678;
	h=To:Subject:From:Message-Id:Date;
	bh=jh+OMgOrbCa67oi/cI3d4tBHTCPpJVCMly6U9YFDV/Q=;
	b=MkJaIlpWQIoipbtEaMMgEgND0YtupEwiEKOtiKuxg5+8phEjKhj6N7mvQ3jcQNR2
	tEKAtFipA+x+E4Z73YAeAINICg5UEY8fypDtJr2c5x7Emfb4U+lcjB/8uvA2pcH8l2X
	qJZoh6kUTy8DnKaJR88DC3yyHagTIpsK9Id3/92A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650979678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jh+OMgOrbCa67oi/cI3d4tBHTCPpJVCMly6U9YFDV/Q=;
	b=iMXoK3BjstAk5fNP8Uw1MlnFMtCy4J047iT+ttHmau85Z5PquwHrvuIXwgmYqU5o
	9lzv8mGUaLYRXG/JWHFVUSm8cqUgJlLg3eNNxe0mq6NI174GnaiQQJU6j5g2o9BBBCZ
	BlkX2mdDKoTRlDtL5BB/XnfrXU2ZB6C/HD8KfmoQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180660ea83f-1110a037-39ec-4cdb-9ea9-5c7ce483b1b0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ef4defbc3304e8cdc95fc61ee4ab0e256075b4a1b419f7fe70d20295492acf71
Date: Tue, 26 Apr 2022 13:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650979678
