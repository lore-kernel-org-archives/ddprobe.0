Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CA277A
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 12:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650372058;
	h=To:Subject:From:Message-Id:Date;
	bh=d9FFOJh6Ek9ZZZ6mMsnWdOkSrKMQYrxWxFyLK/uUO4M=;
	b=Oyxflh06U8ZVb4YckYATSx47PzG6dPMZUWkvKDGAml2RAxiKtQqdfXvjfVEhvl7+
	HtvBeNLb5Uo6wMUvArP6CY3yHqWR9hOGwF88dP1YFh53hPxSzXyrsuatfFGvSS7dZ7N
	QAmC4aqrNrqqujjahaxQ8GCOpmmfJEq/LbdY0ldo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650372058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d9FFOJh6Ek9ZZZ6mMsnWdOkSrKMQYrxWxFyLK/uUO4M=;
	b=CHfbFN4iJ6+uMDFX/lw799voZx0oLqL82F0z7eqvF4Ovd0rezsWJ4bZlYTlDfgyf
	63JWLwJEnRY20J68TeVJyl2lqeEaMOPT5YQm1LF4zfn7rB2M80Y4GdqMt3Ei5rjeOhf
	+zGn7Aw8SlsJyLsyksrdgCilskIw1dyZ7jo/xchM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018041d71ca1-898733f5-84d3-445d-a7f9-175e0b5b6fa8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fe7ef1b11d3a28742505a49534b96769c84337e1f527a30a4bdd5e2f8e6b5c5c
Date: Tue, 19 Apr 2022 12:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650372058
