Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71F472F50
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 10:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647079884;
	h=To:Subject:From:Message-Id:Date;
	bh=X7jjc7gwuT9MArdryUcDo3yrfX1EkD7L3zfjTzSG9bk=;
	b=N+pRgXnhEqcQYc7OJnf41I2P8VfDvzK1Fpz6YQL2SYEjQ4afY5F02CRLJRF7tQOm
	y664riKSwR96UxiBubIMFjlttwkCg66QnXZ15L8Ucv4ke4Wpy7piO8l3+xDPzRfwLjK
	tL+lqwWH8hZDaNWQ75CfI8mcsmqlbCb2kLrtsh8g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647079884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=X7jjc7gwuT9MArdryUcDo3yrfX1EkD7L3zfjTzSG9bk=;
	b=UQRHPIdDruUllwcfNaX12QuDD01ODBZTj4Jqoasw37en7rH6VuiImH3TBeABtKO5
	g1af27SRvAwU8Qhb8o4hH0n24JQREAXfVHx6EH5Thm12tfPCMeYmxOka+OCU7+osGg4
	RsKNU49Y+bVuhUtW9ICqdseoAFMuCnke71p2EfcE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7d9c87f7-c0013acf-59b8-478a-bd0a-86e800fce39f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 22dbde5ca4e4f1676d3f54d64bdf835f91079d9cfb86c044d68c117203910a57
Date: Sat, 12 Mar 2022 10:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647079884
