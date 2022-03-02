Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D8A37C
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 10:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646218585;
	h=To:Subject:From:Message-Id:Date;
	bh=Yy/xcAQFR9PjOsrf/Bp/EehjhysYrtEynfS83BcfPCE=;
	b=dCUIyXYdaYQjNcOQ6Ds8+uSUTC8aBzfa6aZO0cg5kExL8lYACfE+SJClmnWeAMz7
	fMMiPLfuwWolQ9H9hRmDdpGdHtojLSWSjC0NmepFw0D8pcD6D7Js//ccThhpBxzVt5H
	UpfGaMIryYmi4tgSFvHR/EJa7eicReBKTiodb5Oc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646218585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Yy/xcAQFR9PjOsrf/Bp/EehjhysYrtEynfS83BcfPCE=;
	b=HC0EhFbvwTGehwSO9ZemD3JNtixZknm7LCUFxygmr9FXM6GK45l4N/19FGzh0Bza
	0ZL2mQGXXb/26uAqujN9xjRMhPBtB92rfNQ+mNCnevZ+DKjsgkJJLReqzNU62Zm0/tV
	x7osOtvWbK3Cc0+YTlxXm1fMPbKCo2QvQN0BH9Ng=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4a4622ae-44a94262-b291-43ec-a080-d1a906ec186f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9db05b1f1260b00f06b93fc21f3821bb07ecfa0fadb61d057264433827c14607
Date: Wed, 2 Mar 2022 10:56:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646218584
