Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DDA733EB
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 20:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650486478;
	h=To:Subject:From:Message-Id:Date;
	bh=Dx0RzzdLKCN6q0n4oqRO9CYTHghNrjoRL84SKPwRvk8=;
	b=jORr5U9r9NlWFSq4jsoboIL6fHUGdHI2gDCJWnS8Dc4tFuIcELrUk9bqyCw6a7/N
	ijLupn4bvBNwfIyIUbLq4yTJCjiK7xeMl9VAkCUVl7QDr7qQJB/lUupLoU9nNhO0SvK
	r3riY0AGZf7klUh1Tu+mMLq1YOuK7VLAl+B2WVbk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650486478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Dx0RzzdLKCN6q0n4oqRO9CYTHghNrjoRL84SKPwRvk8=;
	b=afidKdgMZ1fDqgazOBrGyxooDeABRszNDjcFG6Wo9EpYN9qnEUN0ZSH+tgLIUgYB
	hGuo5VenXojMTIXendZlJNUslEpJc1AaLshMJdOREDYx48Kt538HrW5QyyIkP/5pc6/
	djhkwmWbh7S8TWH6yAG818uuQEmKizRfnEEdmdCU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018048a905ab-b988c455-ccde-4336-9874-7bf82ab7a85f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b5795f371758615855a9229206cd8f49388cf64d8e26e7a05883e74fb7e0e872
Date: Wed, 20 Apr 2022 20:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650486478
