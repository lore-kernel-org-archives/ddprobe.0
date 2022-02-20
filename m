Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E9BD6121
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 22:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645395084;
	h=To:Subject:From:Message-Id:Date;
	bh=wrvUxSiMvrWrClVn5abhFuueulPy+92XLvDoJJ3PqtA=;
	b=cuFvlHMJVpcH89S/01psBaxuR9oUvThn0i6Q7fzPSxH20+tBdYzVdT96BogUsyQm
	ZDy1Ot5d6t4nn2TaB0J0dlG/oXLAnay+7uYo6b/UTTuQFbb9CD/nxpZCFeTyG7jhaAY
	rmCR8xLlBd4wAJtUI7QtB6pVqPOd+Fyf0FKHugo0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645395084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wrvUxSiMvrWrClVn5abhFuueulPy+92XLvDoJJ3PqtA=;
	b=NaJ15DkL2kCmPPb2uVZJsvxLgmqY8Tl8Gh5wKJVGnu5Ge+A+fmK9UN/Y0ZctgfbY
	+UBCEpARHNYsxGI7wBxp1xmtymoog725kC1/42D/LZ13zNeqvxuvbot8zC2cC/hj7V3
	d0oFlD+FOEeq8TsfM63h7JwFq3Ik9CTk9XSNwfCg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f19308607-d9b40998-d906-4362-9b33-b44977be576b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: abcbee25b18bf1296b45ff64cf69b74dfb947d7d36a9c08df7aab3966e0ee41e
Date: Sun, 20 Feb 2022 22:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645395084
