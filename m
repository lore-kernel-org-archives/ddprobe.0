Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A1515580
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 18:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645293684;
	h=To:Subject:From:Message-Id:Date;
	bh=poItpeQbfRFJFf8UAIoj21et8FzSEEf+BX/cx9SMrQg=;
	b=mkr8wR2s8wlrDql7m7q86PrfbGQI/Z1df1AScOXgSvhIk4a72FoQEq5UbscFJZqI
	rtrzNF5iShN8OcnhzNeXmsQfEy16OUFp/OELmV1GlWhKtLIvQV6eBU3Hz9slIY7CFSC
	RsRH+7+adBu8UHJosBb3gesz1KnK7BXhHTNNbAuI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645293684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=poItpeQbfRFJFf8UAIoj21et8FzSEEf+BX/cx9SMrQg=;
	b=k3gBwOG152Br9QUf0ov+Pcmlt3y3zWNeGUo/5LGxaoOP23HgBuCyCl6dBK/zHeD7
	Wh/4l5oizbMWSm0+CzpO/RR9WqVdwFuLtYCD8v6yx+UW7syFwBuqV2QsaCHXCqNaAr3
	CqTr7VS5NN2AFFYFf1t67KtSqULZ13xeIhI56uzM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f13254835-a8b62a58-1ee7-48c1-9088-55288615f798-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8350a537df3e2c6811a57095d7677937f67bae614bc909cac34f34c67e06c71f
Date: Sat, 19 Feb 2022 18:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645293684
