Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEE327B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 11:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655638979;
	h=To:Subject:From:Message-Id:Date;
	bh=QXwErcaRJ9JTRedY0J6DukktjEaQiy6i85HXaJ7Uu2g=;
	b=VnAjKugZK0pf551pE+bly9Pa28g/6unAVKYUHW1+0orX3ZvL7EBwQCbrxFAIwI6Y
	iIqBx0ceIYYG6bp5PD5e6267qnxXOXz6H80aKMbNeIUX2j+GBH784HlLIOQK6KCD5Nt
	Nd60UEFTtHHzYNH+szAFq5fKCNXqgKJMU1DMKrK4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655638979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QXwErcaRJ9JTRedY0J6DukktjEaQiy6i85HXaJ7Uu2g=;
	b=KORK8uopyeYbXzZ2ve3t/I0Ww6m0k5le4ZmYJR5pN+empLcKQNjjR87HktQe6eb1
	E7BxSddj49NX5rKsk5c1FPsao6S9jzpVYHEoxGIuNx2Dm6jyok9uLm6EXqrJsVS1PJz
	0g7/4L4V+W56Zd0efC2o6rYWojKb6ojTo7IYkigw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817bc5f29c-58064023-6014-4b50-a36c-9a1cba66e0d4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5feeeacf33b5448fadb50c9388b22798049a49503fd8de7b672c5a8e31125020
Date: Sun, 19 Jun 2022 11:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655638979
