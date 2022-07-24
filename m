Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9073D79
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 22:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658702212;
	h=To:Subject:From:Message-Id:Date;
	bh=U7X+KY9oFTij287jUJ59TIxRNEc/bY4HaG8/0ipF20I=;
	b=jAMGpjCPp7BpahJc8h/XYoiyUb13Toz5Z3V8e5C7yVI2VhRFJ78AW8a1KlDojLyp
	FvTumZ6wcAW6JBbrlrreduKvoHbl73zF9W9Q21fBfU1T0IxYt68Tmc0RqHNa9JVwIWq
	UEH7EeuswXwwx8b58ekHpJEzdvVq1oNg30u/uO2w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658702212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U7X+KY9oFTij287jUJ59TIxRNEc/bY4HaG8/0ipF20I=;
	b=UhWnchXeH7jp1ZuPeb37DniX+EE5d4UiYfPgbD7zqu7Rqrlcz2yRmku1RJb8sqS9
	QQ0N2fD4Fx4FriK3fVoRWQpE9a2QnmJKnN2t5HazNiNmqaxvQYEhZiNvhjfd4BbE0Lk
	IPwbXbBxiPgZpAdu4cRwOr4hZfCQEaQdD2zSgBEk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182325b2d1c-ff5a6e3f-7241-4fc7-8dfb-3fbfe4d69da3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b3a510aba8ccf596bd87a61a8a8b4d4a2de0c35150bfd002dd304287a4a8c0ec
Date: Sun, 24 Jul 2022 22:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658702212
