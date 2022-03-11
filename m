Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A5DF33E9
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 14:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647009985;
	h=To:Subject:From:Message-Id:Date;
	bh=VuOWHaNB6UguCuiLH57Ad6zrgZT85lxrXKMzztpM2o0=;
	b=Y84izYo6KzR7shAV/npizD4RD1ePCIFp+FxXtqOa9Wzkb1W5xmEXRryZUc/sG7/5
	ZDJttxGzTpsSuAsz56Ay0QtAyzQ1Awl+hSf6UGw9fj5C8vhZUC3w9e0j3JlgXRJttiD
	XAiMT6NDzs3gHZUy6zjPrdqCBeiJiKtU9sgD4OQo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647009985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VuOWHaNB6UguCuiLH57Ad6zrgZT85lxrXKMzztpM2o0=;
	b=ewOXiJOtv6nTNogkA5WEMFA16o3dW4roI9AoHZGHefaDMxjLeejROI6Zzm0YGqbs
	RTL9mHZ0LJmCl7NX9qPHemZDhxhB1Yjri2OhPpZiBblXjsGG4jYd+q3amaYnlBPgOfm
	oAlaXaKiYi3nRhgSC9wThswIwHZk9ljFQagjVIqQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7971f0eb-6ab12f5c-0417-4e11-9597-a04a44e6248b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5cdcd876732df1a83865636c4c6a07eae64290798c222f8d1e38dd07317cc3d5
Date: Fri, 11 Mar 2022 14:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647009984
