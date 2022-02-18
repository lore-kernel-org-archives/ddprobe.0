Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220E94C6D
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 19:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645210885;
	h=To:Subject:From:Message-Id:Date;
	bh=0Y0SV0Q/GrWAdPSMJG3t08Bn/h9FRdTC4jYM0YxOzgc=;
	b=AqQnwOJHm0bFpetZvfFy0qUP4Z0yej3nPyOmePrlJGA57utD+sN3Sy+6jiFJneB7
	kb5Sfg7lgAe1Bh3GnOmBgZMfYrAExuUHIvp1UTl7//AX1xmgWu5Or27k3WzXEdffzHc
	AItrusXYhzKEq5ZrIfEDQMdc7LxL4dcB6i8Yl6ic=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645210885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0Y0SV0Q/GrWAdPSMJG3t08Bn/h9FRdTC4jYM0YxOzgc=;
	b=DiPanQJtXKuUsjZybD8bfNGdqocVtEVyVv2ikp5LLJ4jczmqRxlTQktKA7qDsc+e
	96ybWnfR0ErdQ6+3bPn7tKzfa7zZi8upGsGqXWiNWSbfIOd3tC+feFdGygEeudlTVrX
	//nrhQOoPytJk9G7/4XXt5kqlxGaDhWGDossCNsY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0e35db45-957c9d07-75a2-42fa-a17b-52351635bdc1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4d38f39fb9ac6158bd994651c54fd1a146469c4b6ebbe880bfaaccd7393e5491
Date: Fri, 18 Feb 2022 19:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645210884
