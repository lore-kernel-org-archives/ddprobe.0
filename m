Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AADDC7C
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 10:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646218284;
	h=To:Subject:From:Message-Id:Date;
	bh=kHLtAE5+fzMJGWPKz+k5X+bnP0zKAZul/BBk1DA26Lg=;
	b=c6xZJuakS4ZXoz+76odwtJdABQxys5XmhY/8jWAnpmSbw5rg7jAbodV9Fo5cptb0
	pczkUJNxpCcVBiDnoZSrQC6+jsiUU49h7VNfWCxBxjjJh9XWRSdIDg6zABr0y6vDTt/
	0UwWWOjnnesCOTiiPO5B8Du8Li9Tfk4foZBqnu5w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646218284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kHLtAE5+fzMJGWPKz+k5X+bnP0zKAZul/BBk1DA26Lg=;
	b=eMn+gvS/WI/1Mf5JOXU2/+VcOt/YkI6DCUuYVvQGAKHrvqXZj+SCuAsiCAJMDsLP
	W3MtFT2Dimizb/uQFZKwltdbONNoY6aZ8cVUNYW1vX9v0Uf4DJxVOu/AJhxrZVDnBGs
	T9d752cY75nv7qq+BE7tczw7Sl0eQbybWpT4yTgU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4a418ed3-814ef37b-2f76-4440-b30f-55d6cca67c3b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 31e36dfe3dd2b837d4e0945ad535cad441af5e2b8fab40d1f0e816f71d970cab
Date: Wed, 2 Mar 2022 10:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646218284
