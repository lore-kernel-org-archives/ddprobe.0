Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A396513D
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 10:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645265784;
	h=To:Subject:From:Message-Id:Date;
	bh=x+Xsz5WcN3hLdA3r6dmmv+DrPwrMbHBlsCCb7lAxEH0=;
	b=RGnLeBhC7q5N4VmEucSf0Ld5eYrH3UNICSB1L244ya3+T5pn1zeShUovDq/r9+4S
	IcVgDb4VmJsEI79hfvcxc8Rptb9X5iXPdVZL1ZO5r9iIhg2oR6Km4F0HPxd9CSYQxpC
	xcmhVxXn7B8ISesHr6un5A78rLYiZczSGxbZ5Xhw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645265784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=x+Xsz5WcN3hLdA3r6dmmv+DrPwrMbHBlsCCb7lAxEH0=;
	b=TZfNbIfDTK0gazXk9TQmLQmkAGx5mONi8UT0HaMMHO0ZbYLwvXeHpdj7RVe58tmT
	zBfHKtcEcXzVXy4KFdc+IOoz3JtfgxTthjb00XlASDNJYLdyzJesYW7Bg/StUDVQ/i8
	MjIsjROAi0RvoZuYtEyqRhcS/rJjvFi1gMwsaEI4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f117b8fca-72908095-ce4a-4e40-9df7-b85d79795e33-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6eddb8ed04c5c93ea7869d3240faaa296752db7f064463d06bfe03785f9bcd3c
Date: Sat, 19 Feb 2022 10:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645265784
