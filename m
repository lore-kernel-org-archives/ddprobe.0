Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 533E3A3F
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658964052;
	h=To:Subject:From:Message-Id:Date;
	bh=mpj60Ha0Ha/A5NUXCDbbJrWFJ+jBPJWRrIZ3CjeUGSo=;
	b=KE6pF6R2qP63poEAbxZDXhIAJUdBSorG5u1jMPE9Cvtqze5VaZ4g44ikDpsqsxQd
	TSFJvG410Z9RX5qCpBPdJfWrbP8blIj88RAfD+LQ0tnr0GQacF5m4tR9Qiq3OhnEe4x
	I4nFrfOH7/R6vlF1IBICrFmLPpV8sneNY8J2QGx0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658964052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mpj60Ha0Ha/A5NUXCDbbJrWFJ+jBPJWRrIZ3CjeUGSo=;
	b=WP3B05d5YCtCqmvpBU6WOi0XmIdWtQGa7F/RNG5WjfN0OLCqoNPBDO5c1kCq5Yfc
	dbY/qEAISy6DbCFX/udN0qb/OuEa4oisgVwES7yjNjRLfUMDlhi9nc1EWJy/7TkX0nA
	w+gKaxpcEq7OkVtNeYoXSJnPQsOuvVudfcFjx58Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018241f68a68-ac3011b8-2e1e-4012-b58b-e206bbbcbe96-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fe6d37ebf51e10c07196ccc4be47b33bf65304cdfc1178f5c82e60c37b8624d1
Date: Wed, 27 Jul 2022 23:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658964052
