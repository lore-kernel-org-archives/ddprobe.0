Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BB4C3686
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 04:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645849285;
	h=To:Subject:From:Message-Id:Date;
	bh=OyER0hJUfXhat9/Fy2T6Rt0l+AMhB+NJqdydzFczbio=;
	b=KoXqz2Ul9OpBptAh5WXtRjlzqNyJY0Zn6CAbaLso8ORJRhqkRdYfsJlz24l1RKPM
	b7f28FKgNMjXY1IiiQ9HzOfF0o+WWNlRl1mrcKLwArFNov8qekI1ocscP4FqcJgzBL9
	+8jPMi0KvUtuTUSCtnJocaZedDGY0EEgKsQmQmqg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645849285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OyER0hJUfXhat9/Fy2T6Rt0l+AMhB+NJqdydzFczbio=;
	b=b4cJXwcPa60jsSRbcJ1JgFC7daCm5YIfqCtPIWjKjMLhMlX4iziq7cHk69CgWJRL
	VnOadJp9DO9m9VMlKtEmmM+Hs0DT791SJhrFAGlXqgznhzBTYzlHVGt7VLbPIJH+taF
	r2xUFrinxmUwK1cFhdxnHxArDqW6PcZbIX+t7deU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f344310a2-800ea3c1-1cbd-4918-b035-acdaca5a30d0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 70e2a708c9a4599fe09c4083ee38f2c1c9bdd74fd7da0c42f8b3243bfe53aecb
Date: Sat, 26 Feb 2022 04:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645849284
