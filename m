Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F0F47FF
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659664852;
	h=To:Subject:From:Message-Id:Date;
	bh=5hfqwhYID7nt2DHMwSyeah/DCbP5ZUUzS2FZs6MrbqY=;
	b=MlyZrxYC9Z+3GLEaA0PrEKIzcpvWhT7NXIBdYQ9PRqBBy7lqnSgGDScr9qpLjVR7
	3GMPnPdKMcBExWz7NkW6NBQK08mbhW+LP4jIb6yqgKOLoWKS9nDgddXLqoNUENvU/1o
	tBW4lj1oV7oLwyE/pJl4kiXNaaAizdDzStKn9mxE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659664852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5hfqwhYID7nt2DHMwSyeah/DCbP5ZUUzS2FZs6MrbqY=;
	b=GeJ9TWnMAQubeX7wNzuXABaZ5Yb1UzWW/KBkTv8BCViW3pi4j0sW91A2GppMwU+E
	zIE9RTaqjFtBRtS2ifmci0oKWD5uhrnJQ9BYcM1/GbYsHmbsyFznP4Se36jWvKRUV8i
	IyvbuSZ545cQB0I+6y9dS/CtpqqojCaV/bYMPnQM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826bbbe693-9252c521-2d21-498d-8cb3-68a608afc19e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b896e3e3dc55ecb3f04c07cdfff8668952ea8b82a9bd17305c7c66e834f2c5bd
Date: Fri, 5 Aug 2022 02:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659664852
