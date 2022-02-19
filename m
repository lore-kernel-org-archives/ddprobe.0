Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A40D457C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 22:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645309285;
	h=To:Subject:From:Message-Id:Date;
	bh=FxdYhazWH8TNq/CudO0QNkbDjF5Y68tCj1Q/ASiEl3c=;
	b=lxwH/jCYaGqRxj9eBD6aURqsGxt/JbFhh5aF7yVlmPrgDiQSkVgWYj6y48wlG70y
	VGtAP/ylH8j2Xz/iQCrB4AotMmkF/thcsuAAKoLY8CfGx3ppJLd28HTJ5tC0JniDLIg
	L8RPqUHNV3809m6jzZSYCUuL5lOuwpuAZ6Eoz3SM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645309285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FxdYhazWH8TNq/CudO0QNkbDjF5Y68tCj1Q/ASiEl3c=;
	b=ie48rpezOjyNObZEi236Bn87aQJil/WinKqZQypOwGHdwQu0S+h6m99YylhlnJ1d
	CxJh2UPe4lKc4OP6i62w6dYN2q7bliriR6G92E7cBPeOQBvVHg56e0cXEnsDwlJHPZu
	JnZGYwWeAGJu1ki9lmhMOHcEFY/1tLXwLaoGJKM8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f141351a6-4812ddcd-917b-4e18-901c-46afba928950-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c5b4d7224368f8a4933d2d16d39543da29842013444b6acd5453330a78a7f42a
Date: Sat, 19 Feb 2022 22:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645309284
