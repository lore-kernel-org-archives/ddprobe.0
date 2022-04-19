Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D061843
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 22:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650405838;
	h=To:Subject:From:Message-Id:Date;
	bh=n9ikZrJ3EOw4wpAjKUcf2JhjdvkpOiUSk9FYc0tDwVc=;
	b=XsJ8u5xlGfmrh1CnjRZSi3pADr7Zh2TuZukFBkTZg0PZsZyNb0SZQTGWbQkBtryG
	+zSjghu6JDw7DC/EuQ7kKgEEGgWQOuNHIsOZVcPaAK6fqvDJntoYoIStmqVMcDqH4hp
	ynivocdkICnS5XUIOF4i9ltnM1VUpRgyF9D9f574=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650405838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=n9ikZrJ3EOw4wpAjKUcf2JhjdvkpOiUSk9FYc0tDwVc=;
	b=Nkccl3eG/eQ1/N1C9tbc5BHVGDU9h2XeThFsTOylf6/OLHqmu2HPxfOUmBuQxMUB
	tYa9cr2+upDQARHlOMy9XSkLYF3cswIjR6wpjp/ZUx1jsCZJKnCv/XPrqmgZYXSQtRS
	5iwtpcEW9m1QwLNAt/lepMGmNf+PnQRLlw/YDoRM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018043da8db9-b1fde2b1-9d60-40d1-a7da-9d377e01bd2c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d921fffc078f80aee5a0848f5c87932667c6c318e6f7e896480b585711c081a1
Date: Tue, 19 Apr 2022 22:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650405838
