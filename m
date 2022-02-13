Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147DE364
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 09:40:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644745222;
	h=To:Subject:From:Message-Id:Date;
	bh=PPHyoCKzCs9rbM3tdX7BiAJ1StWBQKs0BRiRFxriFuI=;
	b=gbIjzuV9vlgutH3JmkrvD/fQfBDKiRx+DTTTsDLR7G19wqbHAHg1PbVaipf2/ING
	eAW9WDIyZ+pPUCYCXnFNIA8aXd/YRwD8fCrbpOgDT1pnRkFKkS3Tu8O0kv+OjkCLcwp
	tKrIiuxNodbGZ3pyPTAbEVMNdQEIzcBlAdW2ekjo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644745222;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PPHyoCKzCs9rbM3tdX7BiAJ1StWBQKs0BRiRFxriFuI=;
	b=dDBjzrY60ZdDYabSG/+8LCSstXWQ78jvecKSPMhimVIDZo2eXQzjaMP2E/sGlV86
	0+KN5ubYYgMEKZTXA3XiUdV32nOUNG5//+a8dgM6Fr7hlS0nqF67CPjBNxeHkqSpcjE
	g4OTk7xfYUK1+7hA6ylwmexcbW0WYXoOpeC5lGUo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef274687d-47d096e2-be9f-4bde-a1bd-56b01adda52a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d6d7082086c67e1dc33dac874b251ad3cb2eb80810a12a5fc851ee1acf85961d
Date: Sun, 13 Feb 2022 09:40:22 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644745222
