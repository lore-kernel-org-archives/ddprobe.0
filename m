Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76A1B7C
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 22:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646431884;
	h=To:Subject:From:Message-Id:Date;
	bh=dlGG/8ljIY/Nt99i8SEK7wyueO0xp86D+5O/NoeclKc=;
	b=RB4mztYpjG8nZpVkhSbm0EZdn2snpf1DPdlQBKWjmikzlU2i5XaRQXESKcQnYbt2
	6JT98bBEBeKe4ENCWpAdF5oWLlOhJfvJ33xT5XE3QgNhMsGsuS3WW5TiBHBXs9xSBs+
	nrtLkR3wqNBaAQ3wrplL0fq1l1K2tDLwq4JJdazw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646431884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dlGG/8ljIY/Nt99i8SEK7wyueO0xp86D+5O/NoeclKc=;
	b=FFFImd7KPfjkpR5xurcY1ugz0Aw7JYyLHAq7Wm9yINct9EwnF8ConQLbG3HSO+3G
	aJuP+Vms1juujqNRvTBmXmJnUyC1E8zkZhRcT9PmQQf4+8YU1Cq9LD1LdOqr+8fj8ED
	gG5IJtmAifrz+dy9+FK6HzFGg3eqvvoe5LDX+/Xg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f56fcd5f6-5b3bbb4d-548a-49cf-b3a1-ef39d4a9268a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d8d46c38720e86b508547faba9a3519073cb28ebdab6132cc6a7f8f0507d127c
Date: Fri, 4 Mar 2022 22:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646431884
