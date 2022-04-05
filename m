Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECFF43216
	for <ddprobe@lists.linux.dev>; Tue,  5 Apr 2022 22:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649196538;
	h=To:Subject:From:Message-Id:Date;
	bh=Flj9hxfUZhr59vAat++/Q6FYNZpLlLcdaHZQPWLGXok=;
	b=IfM3GI1cfR37CMoteC8zJ4v6EEOKDFOHEw0dfbrHvoOXw0mhH2TpDa5y9FB7p3gG
	9RwQURh0m0b7NIomphiPEIux7w1/sVMw2O8wO5BiYFleDZ2uJS5KdnkIOtBjoD9V7WS
	O2M8OuwS5QK/fGYz22KGGmmwze44NB8eptlhn+nw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649196538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Flj9hxfUZhr59vAat++/Q6FYNZpLlLcdaHZQPWLGXok=;
	b=JA/zzS4/elLHnHpNZTogBtXWZW/2pSsVp6Q6kK/KvMgHIkbOE6lEinGcvyc++WqH
	JeVRATaXF4kswGiNh56lk78mNS9Y98+m+jfzBcJsCXC9ei1VjYVYnRU3jq9fdhmM0n+
	+xPClkhMnimmi5R3mYqbR/0iZWJtbE2aEGBF0fOw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ffbc61995-dc6756f9-c6d4-4bce-8c03-8ca036c32c9c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9a93dc5f413a18c1ae37c80979993d6677c80fdc245e8bcdd9cebf6d72031d5c
Date: Tue, 5 Apr 2022 22:08:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649196538
