Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E7447B
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 23:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645833384;
	h=To:Subject:From:Message-Id:Date;
	bh=ojlDp/5CLpAeBACd7HdmTnylR4/bMkWpsxCPqKoeJ90=;
	b=DwDqExt6vhp9OGIJUgDUdp5BNcXKWSSYscicnJ0p8/rb/4bodgCVnMuuhzoQIYtO
	AwixKuqYe2bovjPYlFHRvFt1a+WEXfQsUrOmkg/LURWzjwoeIWpQQRhxD1oMQ0DtZUV
	xMsJ/Jo3wpPsCzwXXpW+x35G1HJvZeI6Ak9VH890=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645833384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ojlDp/5CLpAeBACd7HdmTnylR4/bMkWpsxCPqKoeJ90=;
	b=HektPtePjUVeZzE0G70bCCbHqUb6mPU3U+B6c1wIwQ0QjYhNlPhLDcVQXbr0f28H
	x7xGbSUO9HhKyFe1I8eO/azOb9QLBcHO0Fsfx3bzWIrANA5YCe6+wVzxIkxGrpgEL6i
	6NYYVSBNmNZHVoQU6etWCMSaua4uTpOA5EZ3FPCg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f33507342-0ac00e8d-c888-40cb-93b2-ad7738be01cb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4f98f81d3e5d9d24dc535c543fb3cac8cca25fab42abe796724f91c540aa732b
Date: Fri, 25 Feb 2022 23:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645833384
