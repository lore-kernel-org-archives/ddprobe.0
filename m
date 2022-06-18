Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCD9C7B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 20:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655585219;
	h=To:Subject:From:Message-Id:Date;
	bh=r/8fxPK/VbZMFdK/0Wc9br8ehYAItTtMjmmICladGj0=;
	b=YAkb4QKjxrFzGD4hhoqZLV5Zo5yJFpbj0XxWdE2SGlaAm/bxkXud7KLHExn0CxMU
	MGK0zc9b6YD+DsdQJE2jVKZCURD4aLjAje4Bi7BEyTFe0pHm4EGgLCJ2xTf5jifga35
	9tdjPv0C7dbBugte3Obn67nIY+4EQfQifl4pJF6E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655585219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=r/8fxPK/VbZMFdK/0Wc9br8ehYAItTtMjmmICladGj0=;
	b=ahg1TftQ4qYEKP/9IV3BuyDfS8SsTeeyKQN17HWw6hF/B5fZraRHrNuvgRWBe1kM
	f7LJBpfZdRtRzCk+R/FX5K8JyXwvgoneAQAC314Ed/zGhO7QPnR34F0nJZFuuiiFRkW
	ahljNEvLCSzK8WozFF4UNC0ML1HYXLePACIBEt2o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817891a2a7-f3af129a-ab52-4e1a-afbc-69fc3fa4e74a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8faf8195edd6757896a0f32daf6098a53ec281e2aedcd03315bcaf64b61111bf
Date: Sat, 18 Jun 2022 20:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655585219
