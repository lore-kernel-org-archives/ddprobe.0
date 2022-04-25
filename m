Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 112D133D6
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 21:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650922618;
	h=To:Subject:From:Message-Id:Date;
	bh=wiVAet/nDTVB8C1uZyJexNWU8pMCqpWJL3HZTUv5eS8=;
	b=E6CPtQK4yJB5RmyhrRLu5CmrEDyLm//ELEuYLJytiRtblnxfvKWnPiYLUN+LOpXF
	zx51duhis9gC32Da2l9mHxQsd80/KzANEOuBIs03eI7Mj+3xNZm75VcPjwuq3Mnienv
	yJEG6CPIMgIeRtZeDm/RtvAypjqGwCucMAaqqSl0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650922618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wiVAet/nDTVB8C1uZyJexNWU8pMCqpWJL3HZTUv5eS8=;
	b=hS2xR3Mp9AOCWWd0LOejp/N9e6ppRr76y6FI0Cyibg68t5dhd5L6cIw0Chs68hr5
	Xeg68Hi3aOb3YSq8IRlZ+GkDzU/9aU7vbCJhlH3Zy41paefHq5UHeuw+rnvoTq7vWSy
	OLXqDEsQn/X3jlRsADNV62oX8UeVH3/l/VJiqxY4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018062a7fdde-95b08bed-0c75-48fd-b81c-0bec2bd40672-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 226adf89f5e3a7eeeb0dbb05f23a26e1c3a014be8e3f83f6b8fa519192e2ab67
Date: Mon, 25 Apr 2022 21:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650922618
