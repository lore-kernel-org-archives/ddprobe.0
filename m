Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CC0D2F31
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 17:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647537984;
	h=To:Subject:From:Message-Id:Date;
	bh=c/odT9aJKGPKdrc3/WeT45vP9fKQIpRlmk3QHwzxvqQ=;
	b=Q+nrQaPhs9YYYdt1XMZsyshVBTEUReiyN9LwYIPkx5oo7cQjxihkcLepxGGEVn/V
	TA/r7+YnMkwJMezJ+A8d3uD6hi+VtowyaesNFrl3MK6YxfOd6WxhFcs89FGFTatKNx5
	2FY0+6DQc8vrGt/16WPU+ca4laJhC0VQdVL4eJn0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647537984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c/odT9aJKGPKdrc3/WeT45vP9fKQIpRlmk3QHwzxvqQ=;
	b=A8fXtq/qW6goKggbAjjCP4j03ZDGYQZwCbhPjHLrQNwyk3v9cOTFWBJBDKqM8C7a
	8NJFTK8tQs1rtaZyziwpZDhkGwK4Fy4t60Ifh+6z9mbyZlxUd40t/LzMxKSElwQP5Wg
	ia2/NWYoumrpAechEjiWXJj3X1DgODH8EqS8itFs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f98ea94df-fce49633-e713-4c0c-81f3-db8a9910f76e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 44d8d597d843e60474aefda7dbcb4db1bf26c1778ccfa4522ba9b8d9ca542216
Date: Thu, 17 Mar 2022 17:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647537984
