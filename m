Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF7746BD
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660082452;
	h=To:Subject:From:Message-Id:Date;
	bh=+58WeGq3Se8gv7D31m7DMnvJkzx/tMcp73yPoj7nXKw=;
	b=XV8jCpAA6mL/yRxZVR1Halan9KSMNWf7qn3IiFxzXMD4GNIdzj1oWuH7Cdx84gVF
	s1/6vb8NfoH3gtde76n3RCP6XDaevCWs7PJ5uewa4Csj22JjPbU9eCSarU9HiFk2UTC
	lpsPn0GpgOEnEaMZcSXw54QHYkRw5U0yk7gXRsBk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660082452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+58WeGq3Se8gv7D31m7DMnvJkzx/tMcp73yPoj7nXKw=;
	b=HmuE1tZBZIYeIe3A9E04ch3VlWUgwv/RFcdV++TvU0xytMJeoqNcp/eC2agOP3b3
	73GsuISyHhhKXmEeQoXnCX7nypJXTo68PlHs+E+onJ4q4ktXgZvVyPdLXrwNvRmCP8z
	Dmak6Fd0wxy+N7pIjDutVhMAepm+j7NJyWvOW2r0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182849ff83d-00afc99c-f1a2-4047-a3fd-fbfb70cbc33c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 64c9f0637f1f95204f4b779244408a482f38d7739cddb277af7e9e03c2086f94
Date: Tue, 9 Aug 2022 22:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660082452
