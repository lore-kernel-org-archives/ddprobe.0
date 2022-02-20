Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C7D2179
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 08:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645344685;
	h=To:Subject:From:Message-Id:Date;
	bh=bM1xW8KNisCP0mBWJGsuvn5LMMwZ4g3M9IueC8ARZ4A=;
	b=U0+bjIEpqdq5lo+rFZWSQYCuNkFALlwrV0Tly2x2YTZyfnqpT8ob5VKXdix/4BJV
	fE4ZppkBCdVJLWhfZ/t/64QnlbEMMjjFaPd/YX/xSMYFY0uA+Ml8eRY6Z6pSkVvRg4J
	+8KIzGm0cYrgK5Wzw/WpTnEHo3xM4eQkXFH6sekg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645344685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bM1xW8KNisCP0mBWJGsuvn5LMMwZ4g3M9IueC8ARZ4A=;
	b=H80W9/o1RKSI8+nix8CBoTYEteA93t0MH4lc6F1ufDS3rmZ4NN4AfzLadhVW/Ar2
	1oLW8r8KOBhB0sgvihpiIghpQIdkVpn/ffEGpt0LTnBVODE8PbYqccuvmqhDMVmCqem
	eRth+0sST0sF42nP72BxGFqrjwRFFOQQbIWWeEOw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f162f7b5b-878b4503-86e7-4662-91d5-6402ada6b01b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0a2bcaf310ccdfe68a919a9a0acbb6b66b7212c56cbf2635bf6122f63d2324b9
Date: Sun, 20 Feb 2022 08:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645344684
