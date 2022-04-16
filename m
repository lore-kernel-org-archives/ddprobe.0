Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2754A173
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 00:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650068338;
	h=To:Subject:From:Message-Id:Date;
	bh=lDOEpe70/zUCVm0fUxrJ/nn7XFTe8R2/9yk2h7Rnp/s=;
	b=dfu/jN6qNtkZ/kbIz/wZq8bx8RyijRjIhs9dqgsdRB8GvETRISkjv9eHPpc5N1RR
	rEW7PxzKoYjNry3ADvcHGpzmUfgopOANLR9lTJmXerpxwKYUIv7w56JcnjMkBFM4bri
	z4LEORxOicFQPafeD7fQMMfC75sfKmm07XBf7RPs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650068338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lDOEpe70/zUCVm0fUxrJ/nn7XFTe8R2/9yk2h7Rnp/s=;
	b=jBYUHW2cWR3FFinU/k0/zxLxgv/ShYGW8UXldBWNWBmLLzNuLjOow3jYzzGcnbcI
	IEA1L/KVb6dNoBPA4LzAKU5S4V+CwZ2/8f0kU0aQ60m2hTuZK6mEL37O3QaXuAvaXFb
	+/NO9F/J+LsJSNsSGUd0y1iT/+LEksPjGzs3/U1U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802fbcb6c2-428504ca-ad27-4c99-b7ea-c06b0ae0a309-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7933d7068d3863a400257c88d79505788107cb7997762c6a85d7f8df692a0027
Date: Sat, 16 Apr 2022 00:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650068338
