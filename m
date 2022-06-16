Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7136AA6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 19:37:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655408220;
	h=To:Subject:From:Message-Id:Date;
	bh=dKjo05OPiJmh8HEHW8eGRP7wv9BodjgNLJfShpSTeJ0=;
	b=E83ub7hujf6gIN+mdmhcg5Ct7mUtF+/AyY6ReAq8xZ/PI6uhQ1Xj406jtZxEQjBL
	vqBT4vMtuyStATKtrcSchRFAawceNZ0woTNY4PA9PYviw3Jimi1BZbymLN6mNECSZS1
	KtpYdC84yoxVo6kUXEBZh95OZ9iY6riN/cYZd46M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655408220;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dKjo05OPiJmh8HEHW8eGRP7wv9BodjgNLJfShpSTeJ0=;
	b=X95rfcWahS8PCahoYo9IPNZa4NLyY/MDGOdPnjsJLzvobIntfbRWML6AjwbYtc0S
	/tBNNkqtvMneZSaTf4R04mQD9DvHtvzN+nI4fLZDKn9c/ggryrs+8279RFeNxWPSvw5
	3/m1ImERB9WJALkdtOeqEZ2Y+0I5e7dFO0FHWqBk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816e04d482-d6b71e90-72ac-42a4-ae7f-06a1a83f9b51-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7519beb0cfe4495f165277e0d326036f26d92eb9ccc62060c811bf4f71cf224c
Date: Thu, 16 Jun 2022 19:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655408219
