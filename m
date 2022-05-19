Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F43228EE
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 15:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652975099;
	h=To:Subject:From:Message-Id:Date;
	bh=+6+x5D4HuuUOkMukjPfHrV/vK4VUiiFoj0/DX1QNVko=;
	b=HXqO3z+grbAe94oEtK84OiUYEvCS46jBFE4uAXp7g5gIgtKQ5vAa3ESAELSuk0SJ
	WvDkKTEf8/2EI3KWkGm1XgtzTVQKbXm/Hgvf1st/VnrugjntAyxWaSJHgsii+2uBDaQ
	0zCzxmqK+T/2MbrH0qHqt408gnPcq9RvOag1z59Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652975099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+6+x5D4HuuUOkMukjPfHrV/vK4VUiiFoj0/DX1QNVko=;
	b=kUgnlQQHlGxOgGriJ9UazVJkJiKFRazBfWnuOcleDikmUX9xmqTS3QoWIDXqYQRA
	eNJGtA4uTLDh8K34piTHUsGXlWdUDXq9caZQV/SYBCnwmTDpOOlG2E6dDKxEMkXTy1r
	21oM0L9VzIi8Jz2fxmyckznBDAzkXmk+H6V7lDnQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dcfe5da9-e09094c6-b98a-49ec-8b48-bcd0854fd47f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 949f60a01b4d62109b648a45b69ff03f83a3442b5e301b1b03160bcde5aca0dd
Date: Thu, 19 May 2022 15:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652975099
