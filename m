Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7570C28F5
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 13:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649944378;
	h=To:Subject:From:Message-Id:Date;
	bh=eKuUorZhxzvcM0WmNM0uB3NZw4dciCjn4D9wVvuVJa4=;
	b=GMIhsAY2xDoWjL0ksDXfl8uitfaRywfDTEnq3jKNXflSN2DJeXBge69QW7fxjUre
	NXm34stF5GD7OlFu56d6XPGGOZPl4YNzwaVvFbYJWoNoNQfKHg2IHWcxgHbvxD8P7yw
	r1aOnN8bAjwrGLB0dgQZOI5zY56hv95XHO5I85rU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649944378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eKuUorZhxzvcM0WmNM0uB3NZw4dciCjn4D9wVvuVJa4=;
	b=M6747QtE/9AXKWpw2ZF4kOzWHMnuElYd5RFRePEo4+XoMTAs1AM7zyD8qb8Fsegv
	xsZYBhXiw/5MTHnL3BAUNFKxM6ltiaVIlRaRZypLDsG/MZ9tjhWyJ7vhwFhK7BV5sFy
	MkjgDmPMxM5qLa2RmyTxivz765uLPRSWJoMUpxNw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018028593bbd-2c180caf-0e79-4b09-af94-1df19d637815-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ee318d424dfeaaf272477ff2b9c6b13c566d76c3cd6fdda7d63812971fd07d03
Date: Thu, 14 Apr 2022 13:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649944378
