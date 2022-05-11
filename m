Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E8B17C4
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 10:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652263919;
	h=To:Subject:From:Message-Id:Date;
	bh=/kw4t1P0S33LfEm8KGnQyOpsOlVYkcYiVuH/CIqtCNs=;
	b=LYu8htmrqY8u2s7Wb/eNt15toR9eUvrF5Ocg3HCO2/7bUqkB6cKzMgHrxNDcjRsZ
	OrsqQtUObtbtefQEt+Nl1qF21rbUyxmh/ZOq2se1JL5p386eUGLN1QgQyOfqxOMpPg0
	Ma2kFXRBQGI9q22AI+ZQ3vLxPOBu/Aa+d64iGDu4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652263919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/kw4t1P0S33LfEm8KGnQyOpsOlVYkcYiVuH/CIqtCNs=;
	b=QK7C9xWb6wHQQOSr4LcrGgpolDbpT+eqnnlpVOEnEQc3aL0GA4dPkP1pOhz5zAcH
	Iw8Qyr678lfXI7NEuG91BiSBTpoyrQoZc0EX533oOX8VYCUOJyZnrE8UzDDd4vEoCau
	UdCR5Lf9akJdOsSIuXt204ZmuplmlqUv6reqeYC4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b29a9ed4-c942c09c-1941-47b0-ad8b-b400689a2cec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d7c7bd92b847fce600160af9db4cafe93699074753e66edcf75e0d1aae8efc99
Date: Wed, 11 May 2022 10:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652263919
