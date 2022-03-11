Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01E582574
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 21:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647034585;
	h=To:Subject:From:Message-Id:Date;
	bh=5MQu+CCE/+c7bXIB6KuzBe5YTtYaKy21MQYUrRwkzBk=;
	b=Y+cmLPux3f544ktfUhPYf9N9spwB/z3HoMEW+cabSXcuNOh+YLs61fZkSls6ignG
	XFWJYtA8AyE+Cwbkq9t18ozg73zCQ25xVmIdKGtnO1uN3qRAJnJ8ONsXaxMbyx72p+0
	VKyVLmHxjR0QEJK9b4OdIkx4yGAtIm45X/cF06Fk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647034585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5MQu+CCE/+c7bXIB6KuzBe5YTtYaKy21MQYUrRwkzBk=;
	b=bNPkVPEZBMXZgz2GPuEuU92ls/EKoDjzJyEVOwacEk41/jrNKCC9JR07/cFb7jhY
	wJVhJd/uU0LBTcnPqfsyrptSonhgVGAhmO5uIjBZYqQvDF2+z03IUo8vol/M7WQs3GU
	In/6xc5jDV8lzdsi1xeXifkscqsr4Pxbwh4f9QbA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7ae94edc-f9427161-7c81-47c5-b350-dc88e5979123-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a946f3b9fba446444750a8e5fbc35ef60587f39dad7ed45f81ffc59b38ac1479
Date: Fri, 11 Mar 2022 21:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647034584
