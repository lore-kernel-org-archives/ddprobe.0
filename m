Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06AA020F3
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 05:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652420759;
	h=To:Subject:From:Message-Id:Date;
	bh=EvJwp/jtxNQws4TAYMscULytOB1eFS0LiWhMN6X4bPw=;
	b=JglZLzRhjpCszxUfHf5ZNagzuQmB3hPgtz57oTkPK4U6ZHbRINVsjsnyuZEx3Xik
	AeJumwSDJRM05P8oRn9ioum6k/uZ5yqpi2uZ1ATBgIe2Sq0cDK6UuaUyrqAqDwdOM9Y
	xhw9KPvd0JaNq+WHBFrd5t4hvhYh4OXdE0DnZdbE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652420759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EvJwp/jtxNQws4TAYMscULytOB1eFS0LiWhMN6X4bPw=;
	b=jkdJscz/wCerW/C8NdM5g1Xji+V3TvZYUi1e8RvrgOPIya3WyOw/2LWAWVgCqg02
	eEIe69K92zg06mMrrTsND20W2zj4HUlsN82MB4TO2JwVyqFKjb5KbWSsqNO8EoEj6rj
	Hz/Kwp19Q39lH07ylRqsvhi2duR93BMcsO4zE/Jc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bbf3cf09-f3e27eb7-5b2b-4278-afac-acf8ea5c523b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e84fe81fa79a47bce4586c9a03315ca6f6d7ffa9b42fcdcd65273069d0eedfbb
Date: Fri, 13 May 2022 05:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652420759
