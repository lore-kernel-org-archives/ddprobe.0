Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67C204A3B
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 21:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661202052;
	h=To:Subject:From:Message-Id:Date;
	bh=6CZPwcWIt5E3DHF3ocNtY/xN7oxeuPcoihETX1LtVOw=;
	b=Opy3nN6fi8j/lm5glqxNQQnxaiEvxcK7UOh1I/Gs4BEwjDK5vHS5F5J+64k4O4fx
	fQf4GcQhagBhEvaPmIAB9Zb/9rReQLc4U/cVGaGj52GB8guP7fSE2+xwv09YDwEOaLp
	UADC9WJbUeIlxV8M21EMCrD2DuxfzuAoROSEEdL0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661202052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6CZPwcWIt5E3DHF3ocNtY/xN7oxeuPcoihETX1LtVOw=;
	b=Z8/nL5KackGlD9hrkpN7o+mrOaXp+BaUgf425PefaSBxCOVr2WrCdqkMfXpresz1
	/DmCzZuCjkLX6hS16m+ZhnMJ4SB3f+1+CoDZ2zJSWt+tXVEImUcggk7sJ2X1yJmSRpO
	6NGbUoh2hmygzeUq0WzNYPYZ+i9JGRTzptPdRxnc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c75bb5ba-c0f084e7-ec39-434a-ad2d-03dca3b3e16b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4e0524f9a04ef92d1ef6c3d76837e99389dd988619846f06282d4babd8238d1b
Date: Mon, 22 Aug 2022 21:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661202052
