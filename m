Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90A9E323F
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 12:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646743884;
	h=To:Subject:From:Message-Id:Date;
	bh=Ort1ZImshKr8lya2CUpt7fdu3TfUVtx/BffNndBDthU=;
	b=XxfPOPmH6qjcTBNEkRngcJ8xeEePuYIfq1xQIOY7kyw78478p8gUAgEMLyQIfQB1
	HthujT0sVfVCxW8QpUmYEqV+C0hjRY80vnp+5K7goCrQjgcBmPAzPR5T0h1FppXkZh/
	yfDMfpkVCKTUqJgDqpJM/+T6MR2Xo/HOIiYMzaCA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646743884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ort1ZImshKr8lya2CUpt7fdu3TfUVtx/BffNndBDthU=;
	b=FBxy810yxeUzt6I/diWCxhmi0NnV6+tClLCsyiqTCmjVV2eawM802k+riDy4/a9T
	a/R0hXAHB8IpLAAApXOmpJUjsHijLaeyI5EthBwvoTW49gN9tbVC1Fo4k5qFrJqBs5q
	Hasj60NV+bSKwiXiJST0hAWlgUcgkZiVW6pe6uoU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f699593bb-bbccfb26-5a75-4e54-b7db-d216191b8354-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2cdf2a077ba8477e8618cbbe2ef6dc2cdcd05017b83e16613b0e13d89a124701
Date: Tue, 8 Mar 2022 12:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646743884
