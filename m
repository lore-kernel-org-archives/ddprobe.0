Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7698253B5
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 15:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645284385;
	h=To:Subject:From:Message-Id:Date;
	bh=SCCJdEzWpHxSXWAHoNhpaQtwu8bagqGguRm1bKKpWMA=;
	b=ZrOqbauszVf6ZoTGuZP4JMVSYqyZ6oQ4JuEjIT91O9F4xcLB11WYRnR14sfYjNDB
	+ABBoJt/DmJTG1GYY8ErG0YQhwODX/xRFjYW1joW358BWx1RQctv/mOjHeGBFEs74OK
	xxL0EPpG46+V3FKOrFUp/SU7uTcosoh3CtulSKvg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645284385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SCCJdEzWpHxSXWAHoNhpaQtwu8bagqGguRm1bKKpWMA=;
	b=PLRWSF7Xz8yrnpapFlO00iYXM68cNDjpz7TL+ARwi0S2Y+0b/jieGT/fWXJHIemZ
	FNfXUHPcd4SyWMlWQFUJhNNlurj//dfMXwHjeyHh5ivg/pNps3lZ73bC9ph/s04oOnB
	Fw1QomBk+6x534c00YgwBLPFDFMsCC35GGg1hH/M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1297607a-50d0153d-394a-40c8-947f-b1b4b6c5b8c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a1c952bd1cb5a3b550838a4adcbae2e119382bbb7e41e6ab4f808443841b88ae
Date: Sat, 19 Feb 2022 15:26:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645284384
