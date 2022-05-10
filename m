Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEEE728E9
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 15:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652196959;
	h=To:Subject:From:Message-Id:Date;
	bh=0evFmqjYVdsXuXzOLfEdRh4wvY7u9Cxple3iXuzh/RY=;
	b=mQAVXbPClM8E6sKjy6bB6qeD6gBG9FUmbcrEvTUCDINW6INeJVLRTAKl+JgrUswc
	I/9W/QlpPLOq0Rt2lhkODxMedbjoVPz5hPYYDsocc94rHjENmw7qVNDA3yDkeAWbVLG
	4nbgxGPepP4vV6lFQX9OOYDmoQJbdxvHeUhIRjvo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652196959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0evFmqjYVdsXuXzOLfEdRh4wvY7u9Cxple3iXuzh/RY=;
	b=QO8t2l9vsAfvOpk9vS3iucMZNMPcWtz4cayr32GeIfsSA6+JXeHm2wCWRRnjDoFy
	knz2OYrEzasvZ0jsdMjMLJdHflL0GV0HNEWL6xVXwdfCuEivV4uuJArDmXMKli4j462
	ApuewfwNSAes2tJ4KXMoku8TpR1S8ixt2TzM8bok=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ae9ce421-26dbb835-cf3c-46e6-a454-67d66a78af18-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 39f2427c8283c1aedc63d99a6c48aaa0f9d8d027f0b164c6e575d88e7f8105e1
Date: Tue, 10 May 2022 15:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652196959
