Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 911F33B46
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 06:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645079785;
	h=To:Subject:From:Message-Id:Date;
	bh=en1l2+uxcUyiqJbpm2VpZeQLw0OWUg8oT4OJE9uRRxA=;
	b=JNVh6QcAeLdwhIg9/qivEC4x8Ncms0psyuALmG2lBcjASI204ScefKVG7RsbPrn7
	NskpwUSMQ+sQw/iEhKF0gCo4qvl4u96DOGZ36v7cAviNumaB2oQFivE39RlkJfWslcR
	gdCgNC5TwgM4rLKZ07kMCsgDK+7JWKlXk1/fPnLI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645079785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=en1l2+uxcUyiqJbpm2VpZeQLw0OWUg8oT4OJE9uRRxA=;
	b=B1e+l0RuGJ0JW8ur/V/Q7vEZOIaOlfk4g/FHgYlRvSTckzRk9gSFAifrWPntO3Y0
	XFN78cFPfdfqyuJKpghsj1e9a1KU3KS6rVGSJ4RDWr86PRhXYz5SfouFAgu/cHxDEx2
	DMmAf4JitEBKPO7Di42nF4RvABtIxVVP0O5GElcw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f06656d83-e1803220-8168-4e73-92dd-2a2800cee9b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b094f7014350a1fd92ccd00fd4c960717d70e2e673279767c569d1f2caa79ba2
Date: Thu, 17 Feb 2022 06:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645079784
