Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97D4EA33
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 10:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646388985;
	h=To:Subject:From:Message-Id:Date;
	bh=MACjb4XLqCy3VzjUKCs7MeUfBcdVJtrWkPjHrNpBWhc=;
	b=WITgSpoKbQ7iWai6Y2zAms6miyP+eftcr8Ub4xvAWx6kVAb3ycaFB4JkPv16YhIT
	uiKuzWVasz99xA/7QpHsv5bsFS+2zSXyeVNoGnruJAz5RGtQ18C5SvN/frIm9iLaFC+
	KPTEXU4xjegJtPNW9T0xKWxim4wIaS9rHZzZjRS4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646388985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MACjb4XLqCy3VzjUKCs7MeUfBcdVJtrWkPjHrNpBWhc=;
	b=V17SekuvIHS/Qb6QH9qFgLHgFvkwgsZO/14LBo0iZcCFtrLm4+6H+QTFiKfSE1H3
	8pp1d8xD7H02BdBOqTPu/0XD5WkknFYgUYGlbJidDI2CPF2CAcUt+3EjZdeKu9qKyCY
	Gvrh7Fg8+90i0C+aznFqFeW9gdsMKGKZxYtxxQOI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f546e3b9f-578cf9db-a91d-4df1-b33a-bc4e6a20ead7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 416bcd9c5dd64ecab885d180c05b900a67266a96de523c9149d574abd3cc02a6
Date: Fri, 4 Mar 2022 10:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646388984
