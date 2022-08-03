Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8FC77F
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659493853;
	h=To:Subject:From:Message-Id:Date;
	bh=psioZVG22OCaUR/ZGqE0FzYWlosCMRZq5mDKHSENSVw=;
	b=UAxevUnqB8mEyw5s07dQIA0zO87msngjXmN/7Sjw0WahJyoSd99HFdCCJ6DqVBfI
	xnwmViA0H0rlu8nwRjP97+CzcI0a4bP9UYe4ZG3sg1nJGnxdkxA+JNWITwMfTb089wH
	lHWKLYPAHCWu/kcMeH7kvK7/vBW8roX4CPNLHWDE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659493853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=psioZVG22OCaUR/ZGqE0FzYWlosCMRZq5mDKHSENSVw=;
	b=fRcwGhKXV2J7SLHea/kMEeGxVNWVNGJPlxpgH3JQR6Ae3y8d9xsjIEGfOgDZgfFk
	Qj2ke78JCOB3gcQ/2+FI7mAqNre8TX6fF2Ve0gQ4LZmBsvHauz5+rLcu+CL5CcNwnO7
	NSWUU9puRviZO6gNFJS5/uEA1LGYQZyAyrA8QQm4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182618aa618-8dded692-5a66-4801-8e2d-e8bd37344b60-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9adbc5f6f3a10620babb151f491bd0d712a1aa0fe259500ba1b887662206e127
Date: Wed, 3 Aug 2022 02:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659493852
