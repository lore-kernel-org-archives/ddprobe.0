Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2FF433DE
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 23:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650929398;
	h=To:Subject:From:Message-Id:Date;
	bh=uXryh0sJlGRkD/hn5Bu6wTo09Oc2KkdqRN6SAs17TI4=;
	b=gIyqEvFHEi/BT+9IHWRZNPtVb/aXk8d33v9fQJUAAF3OxyjPn0ytD5rd9xnk8s8K
	oUheEF8+KcERs1v3sPyuZ4PhopQfdpCfJZmanHPyJZMhfD8cayzVzU6D/Q1XZGnLwr4
	M2tONp1vCuJV5UCglPH1x1VU7nz3xj05OPP9VwBU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650929398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uXryh0sJlGRkD/hn5Bu6wTo09Oc2KkdqRN6SAs17TI4=;
	b=CHQEHprjwYvWoacmv5dZqAKkSp80Z2cfeB1HE6GqoBXKimRKJbz33H7K2+EpFz98
	0H+/0C1Q3sciMW9wEimh0D53QbUb9MLPStaMr5p4ezG9egppv9A1dmKb4ktEg3AJCgT
	QeqpkNiihj63+/VRzxarJCnM/2JIJjN/9wWM0ue4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180630f7237-6f5cf7a7-a0ca-41dd-b4e1-b6509fddac95-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fe7c98dfc24a78cdb1974869e9ceda0edd8b87a1a8821bcd7a1a1513780865e9
Date: Mon, 25 Apr 2022 23:29:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650929398
