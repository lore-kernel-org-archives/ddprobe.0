Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E982F29
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 08:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645951584;
	h=To:Subject:From:Message-Id:Date;
	bh=50H0AIR7w8YPGj1wOGiw4DEwaVAzZqv+i0dKN4hGYx0=;
	b=YsxZqBaNdaZsVyOzEbZeYt9/oLXaE1jWNSmQ93Lq4Eg2B4YBQMnLzNAvyVc8sCpG
	E00L6O1Wj0Pc59MzYTLrEJ5PXwcudb3j6k3FnUZiKTJ+LKne4RQWmrzKNA3yP2JiqkL
	nL5EqBgQzzKx/951LtXd7ZlWpFNTuzWfVKN47Pi4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645951584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=50H0AIR7w8YPGj1wOGiw4DEwaVAzZqv+i0dKN4hGYx0=;
	b=SbAyQXnxDgrZKUZgRV55BzJKjAULEyCmGJbH/wvK7FQZHeUMIp8zrV8lN+lRz/Wi
	RfEQWLtqKM17EFL36ncwrDJmyHMy5G/yVve8cpd5srkifmKFEukdjLX2lAz1P6+CC83
	8Bsyb2ub1h451eTZmGT75BMvxivODVP9zsbKKQlQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3a5c09e9-7cc3272b-07c0-472c-952f-f4a31b84ca0d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 23a2486137f8ba93e631cabea557ab32d42002bc8566dd4a66af597ee67aba08
Date: Sun, 27 Feb 2022 08:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645951584
