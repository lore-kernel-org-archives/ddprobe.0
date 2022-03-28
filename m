Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BBB67C
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 15:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648479898;
	h=To:Subject:From:Message-Id:Date;
	bh=QwFv84rjKJeK74FmLPxvvyAfbJ8rpTdeRo8YZh8T9I0=;
	b=c+mCYy+s/IItlhqdRN1N9x80RwYPAzexgT6MIxjC0lXhiY8LG2alAdS595NLxbXq
	+k/pEcoteXTS7a/6jMd5grzB6OQlQ/4x86qQGKc0gfEcUG8aZruN/4Qt1EjA8HaltyA
	UzBwIwicT9HdS2IlMzq/xO7X3+W0SmqQibzimz68=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648479898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QwFv84rjKJeK74FmLPxvvyAfbJ8rpTdeRo8YZh8T9I0=;
	b=WBNvxbh3Ex4+gUPYbDI6UVceJ/bMtJKt2YU6JTxGEyDTckg17fngAUubqHwUVqZz
	WtZtYwluFji+1kiAlQbmQUmIH7TorvWJ0q8MOxXjhw1AuxwvLtsCjvZ/DgzTofIYR7j
	6/xLfxtr2jKLaYoFjhnerfElLUd4rD2zoFCCPEgg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd10f0aaa-e68a7600-2a9f-4044-8800-07ee0f8ab292-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7bde7ac9f126605591c6d6436017689652e17dc285b5afed0357bef96274b88d
Date: Mon, 28 Mar 2022 15:04:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648479898
