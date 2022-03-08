Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C3AA3234
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 06:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646719884;
	h=To:Subject:From:Message-Id:Date;
	bh=0M4h4VrYFrGllRGdzDoQcsq4JlOpEyh6W2vR+WFoD0w=;
	b=YVHTy4r2oct7xO0ZzligLPjCnuaFd5RBBCk60oJ4POkxofO9VpmfJf/kWGHeYro6
	z4fQwLSiFSElo0hPUzfdVjzTwDPDUXvojKvRzbjNsYBJJ8topZaninW8BZGxqxZS+jV
	/chPzGhoxmSUksbJf38Z3x8fD8hU7Jj4QwJ4QMME=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646719884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0M4h4VrYFrGllRGdzDoQcsq4JlOpEyh6W2vR+WFoD0w=;
	b=BJ2zXBZO3IgUrKfKBcYKvOWu5H+04oZIm2cdsaUgt7oZc4z5v2rtrJU+NMf8AZu3
	CYzG54DfRTdx9CYQ/b7r78hX6/dqLj9V2WWRIgZhZdU8aRbD8Xmkabn4VAEJP29dA9T
	H+CDNuSYBUSLoGoYS9f5y5gD8mDnhbdq0eh65PTo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f68275dcf-4031c1ed-f786-46f5-9bbe-6e08924ed4d8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 851ce2d71cba100df626621945fd43794b5c2b16dcce7e8a90e7fb63005e2b8c
Date: Tue, 8 Mar 2022 06:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646719884
