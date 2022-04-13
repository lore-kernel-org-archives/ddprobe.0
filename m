Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E414B28E0
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 06:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649829838;
	h=To:Subject:From:Message-Id:Date;
	bh=K/lcgO+fqTOqOiENR8f8garC20NC2Di3JMEqbzE/wI8=;
	b=OXzrMDBA6q2bvpBYvTG3lP7890l0SYxKXdipJbMZToFMWfr4Yre1gIJtFSUkWXmY
	wBCbC3jxA+yhSn9cs8Vyn8iUmqMf6EaUeC0mAP2MTXvX4SUrDKv9vaHUx5ivi8HaAyQ
	2aMfA7W8dkk8sPSsEwvbJwSibIWmIE9bLyu6KaHw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649829838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K/lcgO+fqTOqOiENR8f8garC20NC2Di3JMEqbzE/wI8=;
	b=cSpC3YaUtoQ/w9pQfwXA9mIgSdlp5DmeXFdRZzLYeawEu+ySqjN1OLL1RkdwmMT/
	pKewDr03uevyUr60ph1Z7A1LL9KiZy7Z2snamJDLG6nxN01FodLH2/0z/6om3ActErO
	UB7OWezGBAW80U0oP5wcmaf7wj1u2JNzS+a3kIy4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018021857dd2-cdc8ce42-e4e3-4ef1-b90a-574baa876273-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fb2282026675bdc4655f024ded4de83e126412b16d757f0acce807c3238cd745
Date: Wed, 13 Apr 2022 06:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649829838
