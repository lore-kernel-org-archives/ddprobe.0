Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8FF17C
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 10:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650797338;
	h=To:Subject:From:Message-Id:Date;
	bh=Sjgfcjn2vBEh5FmV5dK5QiUzq8Hor0SI2/FIEOLPnTs=;
	b=DKCa96/FfYqC4ifGOJyrRJ7mifDxOuqKz98d6bRD5CTpJK7VA+/z+l4zl0h9i3b9
	O9+W1IoIiIlVb2n5/1hvCfwSFmAIdjVq0H1p7jm+eQFrTXc7lWWLxPW3TZt9Wltb0cl
	eVAgR2NaRGQWkmZi0erVP4Y/NLK3CY8BdUUZUOK8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650797338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Sjgfcjn2vBEh5FmV5dK5QiUzq8Hor0SI2/FIEOLPnTs=;
	b=S+ZACZTqGj8nuvlBiybZPQ7MkhOrN6nmXNIrU8QkJ0Ec1Q0IMxDTjr1xUlzyciI4
	1pBLGEVOz4GHLxdjqomp5lT8gITHIqLmvPvpJ08G9YTz1Lcf9B1x5BuhC2+HAjJ6Qr2
	PuaQZsWw0Ccg9Dx8VB1FdQYDZbjW3VNLqsD2F+t0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805b305e73-88811da5-af36-449c-9596-824a362767e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 71c75d236c9da9245d4d77545e1040879eea5c114f26e9704f3d0a51bbb067e6
Date: Sun, 24 Apr 2022 10:48:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650797338
