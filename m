Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 811B37B
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 01:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645665385;
	h=To:Subject:From:Message-Id:Date;
	bh=fbSOTGWBtFF5q04Wi0b1nF93HFjjhRhBf//wIZ1wB7s=;
	b=Hitu25C/sjQfKwFiVViFYe5u9eijeWUGCIlX1sa7G14Lc/Gb8gqN2jGpksmDo3ZU
	JiKR33YPm2ZpqwaZQ00EUbx/BtaNRpwCrUhku2EXXGSialUSJHLD7N4QtocrUgWFYqj
	9Is/X8j8IwucCO0Jqqf43QdLVDxPrgsA9F80HgLQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645665385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fbSOTGWBtFF5q04Wi0b1nF93HFjjhRhBf//wIZ1wB7s=;
	b=bKJbvm0ZYl/PJbSCUol1TpED1i8Mj7s7nlcw8WnpQGSzSTm/iZT3xpf6U9xqkwCO
	wN4hDPTrTiMZmyeLua5F1t4WePC+8Lvq5VdTifJ1sGJmg0s9ITFLFjittcbhlnCFNZZ
	JZt8F1cfIz3QXHyeXBzn+d9wMZDN/EJmWu1Pbkk4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f294cf973-109a27c6-1905-44a4-a3c8-3b850df399e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 41cd28004dd24009b557187c850fc1ce1026d26e98dba6699177c3c835de37bb
Date: Thu, 24 Feb 2022 01:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645665384
