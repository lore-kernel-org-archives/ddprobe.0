Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A137B
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 09:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658309812;
	h=To:Subject:From:Message-Id:Date;
	bh=L0SSh7QQrtuWretRq4re6hO9Fif14HVjOTcylvp5iho=;
	b=FjfWDSjtXVU9yHRc6wf2uX9Cv8fAeawo0qonRtLFab8SVx3H/M6nLZXfQOsLSR7O
	bNQIyLz62Trqvz3KKZk0CdJ6fHjNKte7zQn4+JsmSSI5TMZ5LZyv4FjYQesLF2AscJ7
	EaObEaCPQ448w/GGzh1f9e61ilbyj/v2YoMfNp+Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658309812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=L0SSh7QQrtuWretRq4re6hO9Fif14HVjOTcylvp5iho=;
	b=UoxEJACNKHgkmV57Zd0M9/N2TJv9fB+QkGLabUXtbHdvw3cJgwzarR3/JSom2XNp
	Lc5sI1+jqsC55a0+D9Xr+1zkmJjh95gPwxuJ5n6IhlJDXIOC6mSvGOlhBHKJEiR72S2
	t5yGkIeEfRf9LMr72Qha8MZwqwsHroS4TWvE0m5s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821af7a0b3-2618d3a9-6961-466a-af2b-096fdee2087f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7bbc96fa4e2462773ca831e4736d8985b877855f97048a41e9f1882b83e3cc01
Date: Wed, 20 Jul 2022 09:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658309812
