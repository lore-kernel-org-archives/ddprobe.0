Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 777553B3C
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 14:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645884084;
	h=To:Subject:From:Message-Id:Date;
	bh=ryVkwCvSDDjLsy1HVHeA/vWLAVZd1uQpnhPw2oKBlT0=;
	b=NtHiWrEClHkhcsIt8TA4rpJ4XnQzkjayfN9nOSGAdU9mOri0hh+Ie3fCI/gtxTGd
	UUxOVtTsrZw+QHsJC/6T93oKdsJm11LX3XAs9xqt/s7b6gFLZGSCziPGiQZVuFmEYfj
	nqCrZjQQOPmzFsBBr9taAJUeF5/CSO7XAjxx5XuQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645884084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ryVkwCvSDDjLsy1HVHeA/vWLAVZd1uQpnhPw2oKBlT0=;
	b=l+A5e0Qil1lZdWTZM2QAoYbeQRPXRxTumxWmuPcONIsuD0D/vlO7J9FZUeQh7uYU
	3BDUsbj+eWtCSiSi+W8u/ED//ULhvdefp/i77TWa98tPqlg9ALxfaBSf9/hbriqTTat
	mWNOFNmeSzNT70modJdHFpkMsXMRv4W0RMy28TG0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f36561236-db0f296c-eb78-42a6-9f12-f797e19ecca8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a549d0b51615a47f9a7404215e6ab7d99172624209b50448c1e0ae0fbf07ebc5
Date: Sat, 26 Feb 2022 14:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645884084
