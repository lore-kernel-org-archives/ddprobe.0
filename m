Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5E8528E5
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 17:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645204285;
	h=To:Subject:From:Message-Id:Date;
	bh=9O2Cvud0rzAYfmJ4joSwUOBYr6BpGY4MAtyMjMvTVEs=;
	b=G30x0g7YP2ExC2yzIJc8S3vrnBQfavs+zs5DLpN+pft9ywFnZmZQ4zF4H82ZGvAb
	X9kcdFN9L8Jz80v4hhWXHEvdsV8w4LFplsneobxhucy0spHPDwE8HntePog1nQpDDmU
	/zUf8LbgF7l3QZ8kzPUlh4Hw7jNgReHhUQygPz4E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645204285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9O2Cvud0rzAYfmJ4joSwUOBYr6BpGY4MAtyMjMvTVEs=;
	b=ckcAdDNTMsD40pG8gvko/AiAUdzomlzBwoTNmwiA1RaxidCnXaax2tlFa5LsuVlg
	gS6dhUSId+JFlbskbPpANi2iADUJvHbkpN8cn8l8okZRIohcAgi1E6dAaAdvXfuWDZy
	nOhypCjdZwnjivVnYMdJMmRkdOLKHsdW4mxGNqv4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0dd1257a-a98bd21f-f3cb-4770-af78-7f7df2c67f3e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d9fae0ac81b0c0f44152145b4cf0fe9833e19177160c30c8befd8c7c1fc98b2b
Date: Fri, 18 Feb 2022 17:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645204284
