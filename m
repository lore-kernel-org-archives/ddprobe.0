Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0303D10E0
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 15:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653492899;
	h=To:Subject:From:Message-Id:Date;
	bh=Tnm+Tk6XfLTLf9CzR3kIWyAoOO7wSCKG+MmH1h//ZLE=;
	b=bwvW3hCPwF8/BMx4KlrySL/Maj+YQUACObtwIul24cA6/AFYYL9pFS57dqXp6Ufn
	PdFMrRdp0LBksP80n2K1uc3/tgDHqJ901UXDv1W+RHPSQcIh03S4BxlqB+0akGnWN1+
	hOh2U9rTOOXNaI/cbmzxCVL4xrZNbJ7EZBnnj1LI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653492899;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Tnm+Tk6XfLTLf9CzR3kIWyAoOO7wSCKG+MmH1h//ZLE=;
	b=PQWK9J62uNShJDd5kY9WEjllQ3zXUNxsO4leGs83Xj9GojQMJ4jlYR42mTzAXNBd
	dUePbtKC7MSxsjrVfUeIu+e85IynGIYGSJlwurnLCs1eX72U+k8LZribRT/JfOdp4rs
	TOij4rxZIeGJlGAtC90hmNyonzrA9qLQ29rt/JMc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fbdb5da8-85f8e470-f195-4060-8022-be550b1f8e38-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3b96fbadabf7b7b4d83bcde6ad4a7b485f529bd9e036b91f610af4e5340a35ab
Date: Wed, 25 May 2022 15:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653492899
