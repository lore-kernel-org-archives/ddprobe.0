Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F9651B85
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 20:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645733784;
	h=To:Subject:From:Message-Id:Date;
	bh=DhS1/4QSUSXTOQLHAHxrgQqTIcPxX41VT9NiYpVk5hk=;
	b=l1bto4eW6tM9lLXyJNvO+FF40BQEVpYwJFRzJcWevimZbuuHZWmTXw3i05qgyQ7J
	o3leKYuuSOayA6pbTAdqC9oO+qiEEuwWwmSgk9TQ3BIPfnEtLfZzsqQTW52l8qiOjB+
	1ChAbqo0xqhJeGcxI04URWyiOkVI4gADAYY2T8No=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645733784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DhS1/4QSUSXTOQLHAHxrgQqTIcPxX41VT9NiYpVk5hk=;
	b=KZWsPuOGSfCJem5VkD8G8CfPj+LGcGo2cqYx/1G7F2jeUwbbs/st+87vuTsYVZDM
	BEOMSK2mWMiWRHhNCZ/28Q9nGgJHd1mpzZIl0gnhRCy1HBQUCujqPF8kLNDoX7qAwWT
	iUSNHNkqRwglwQgxfrHx/VFM6gQQiZ4dJGpBaORo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2d60acd3-30115214-f107-41d0-8ee0-6030aa91c44f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9218c7c8f38c0b026405d43277870c58cb93bfbce99bc62a531aaaa75be9fc4e
Date: Thu, 24 Feb 2022 20:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645733784
