Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D6DB7E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 07:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646982684;
	h=To:Subject:From:Message-Id:Date;
	bh=ANw+YKZsVr167RbqUbRXkWrLaMZ+Uhs+7T8etulyYRg=;
	b=B5tOfbIQ/p9pWzKmr7sJPJ1drhhBjUTk9c1LPvBn/RiOZD6zj+t97NW42S9cO0ix
	SpizAPSJazTC4/86hFw7/xf78RW9Y3f687vW51yfMd0xtURpNDpWuwH4QWdaFYTLGbP
	64W4XiZPPNU2eDZCloRYj1ZMkMA8++ttwh+4Bzq4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646982684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ANw+YKZsVr167RbqUbRXkWrLaMZ+Uhs+7T8etulyYRg=;
	b=BJUi2EJAHNk5W4wvAoR/cNS1Q2NmXvcFkCEjZVNau5s+Fkj0y5IjBNh0jIX5WGrZ
	dGS4hqf+y27GVpQHnbMNLVjd23V/IAZp5I1n3B7IjZDoTRXIIkFafu241bz5odMsXid
	vtHZZM0lRnAInO7HkNbri4YhQ3xSXLeZ8TcxW/nE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f77d1604e-17c87e7f-e02f-487c-9874-bce5da09da66-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c4b4b8c14365d79b13a85f3fdf35a7d3f8eaff81b859799e993bf8dc5e9007ee
Date: Fri, 11 Mar 2022 07:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646982684
