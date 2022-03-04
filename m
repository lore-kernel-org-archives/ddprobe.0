Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90E597C
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 02:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646362584;
	h=To:Subject:From:Message-Id:Date;
	bh=KnlM+OMe+uhsIP0Y5nENFO/WytSJfgosTKoAcSRXZj8=;
	b=jlCb6ToIte9g9oTl5emXjFkGqngzAO1S2IoFrlhdyv2FJZ/PwpvJqrG4+QM8AIIY
	23afBkpbAS5iZmCSahGG14xzmyiFiDTLXCQ6dBXr7SYSIw68U3wcZD1e2+g7Ab5vs0A
	s/cG4EyCvCxKwCPfGfL3kZjHH9uZOQVN2CpIaENI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646362584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KnlM+OMe+uhsIP0Y5nENFO/WytSJfgosTKoAcSRXZj8=;
	b=ax/5C2sk7g/jmH/3CXEWzqsSrtJN33axG/ao5w/FV7kfvZmJQbjk+O1Oail8l0Gf
	JHSWMe6qJ4e2S/dmjFN39pmnHsp9lkHE8xYcJeysglSbmEErDUT0AvJmr3ea5En+pOg
	KvXRt5Bz+WqzlTGUdMI5M2UR6wLwCJKixV7BsZGs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f52db66a5-b86794bc-5c44-4468-9339-818ed81bd0e8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 617777112e113042f02970199ea845c0ca125ca01b8d4afe605904c01af8914b
Date: Fri, 4 Mar 2022 02:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646362584
