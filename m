Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C446C1FD3
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 11:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645095985;
	h=To:Subject:From:Message-Id:Date;
	bh=7ZGI3PLrgd5Iv3X0ughO5J7I4/VjPXssYsTenq2jqpY=;
	b=MDFS97evwc4Z0QILsSFzomsVQHnd0/x8YR3XwWhLyYIrJ/UOWrQGXIgbCH6lYyMK
	J479vrvWdtmLX6WyIN8rJe/XFICbXvqUDfY0ijTzx1Q7TbsKcCOG2+sCFeCX54J6rjT
	+ejzqKn4giy2RIaA1thfDBGoxw6G8665naS5tEUY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645095985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7ZGI3PLrgd5Iv3X0ughO5J7I4/VjPXssYsTenq2jqpY=;
	b=b9KMmabCbZXiFPnNbKo4AYMxJIe5p7rT7xTlW2qzvMmjWywPkKkL7XGTt/MqFRgc
	e5bE0PE5qai+jioeH653Le6kQohsEb6oBPh8E8MQKt0iVo3kuiS0xqJrl2BbRTPCf6E
	ZEjDaOYW2fX4iNL9WRCqfzzdv8Sz+Tf58+aVfQbQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f075c9f03-e1efbe39-d27a-4239-bf9a-55203a852e29-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bdb13dfa7e479ef4d923fbad577554e50d3e7beebed19e07aaaed5d6b3b6f08b
Date: Thu, 17 Feb 2022 11:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645095984
