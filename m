Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 957B36136
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 21:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646255784;
	h=To:Subject:From:Message-Id:Date;
	bh=bcs47fSE8eX0z27OH2VMLmrQXtod7AgebH+q9+GUk7k=;
	b=FoDkTsj/KF5ITuULMhdxZRCQHZYv4Gf7GYgSZt3I6I1vr9Y7NiYx2H75HFiiby/3
	uS+7Y6hH3jhkDLZc3sh6Ysc8H9qF9RotqY19NmTuwTfVggKOJtaMUZPvzNls+TUODAg
	lh7rnjxP5N/HTZ179A34hfmI3TQBDZ1WTCVSxwlo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646255784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bcs47fSE8eX0z27OH2VMLmrQXtod7AgebH+q9+GUk7k=;
	b=dx2GJuJeXaAucy+BvN6CYYoPyE84ZZ5fGNBWrQNxnA5wjSKajnQHMeXWS+QLXy/K
	fOnZ30kWksFmYXcqHxoABI8ALV3vqXPxZJapRg4gJzDZ0z0F1gHRTgZ2Fbznb+VFW8k
	SYIjci0axzvlJjiFgiTOHfJUum7iBDQtjBQHZCXo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4c7dc337-1cf8317f-3ad1-499e-ad93-75e2e5573fc0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 49f5532119ab5e73e097d76c93b48def0ed44b3abdec2c5d80549efd65bdcc58
Date: Wed, 2 Mar 2022 21:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646255784
