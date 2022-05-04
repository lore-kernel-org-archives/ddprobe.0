Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50ACB2F23
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 19:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651690978;
	h=To:Subject:From:Message-Id:Date;
	bh=Vhz+wTQs5N8Jw0o8m9rzy1VUtkMU/yj5YJCcGhPcRxY=;
	b=ZanT8tzu1dq5xVpK3l5r/BE4WW+v0joneYYJHxlAqTd7JpHCpL4QhAr1LOJOn/L7
	ztH5SfbY7dt6/OmDKxJFK0F+GGuiem5DVoFotqKrGB1VhhmgkQh/S+/G+7T//gXpKd0
	imW3XNUy16YJ3YSL0Qfil1HY0Q69enTpUrz5ZG0M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651690978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Vhz+wTQs5N8Jw0o8m9rzy1VUtkMU/yj5YJCcGhPcRxY=;
	b=GOIW46bCFgdbb4K9e/9i5Vbpz9XwaatliviMoTqJmCs0WZPuTlxR3/ZNUl1doPJY
	OezoHEj2GMos6xIfXT85GmGV2bYXl8r9D6NxtUS4JUk5bnKLgpdcO+QJ9L3P3pxcs5A
	NnneQEqSr3WQhfnF3wPGTNuHbMc0YVGFTtNjXiLI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018090743beb-ca00d968-1fa8-4d45-b886-3f4c009d4ed7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7b2e277b3e964cc6ee2b176ea3b1b291429205e7f07f6ce8014b392ea8ec3794
Date: Wed, 4 May 2022 19:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651690978
