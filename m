Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AC597C
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 11:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646219484;
	h=To:Subject:From:Message-Id:Date;
	bh=jAy6LJcdtHHA5qKOgmhfHVp05s6oc2XdLHomoYlIa2c=;
	b=d+jsg2uKDJAKfyRJ0lAYUYZ8B4xMPLCtmVHMjmrdNChj3Zt3+CyWPIxfMIblbNQ8
	6H5oTSIUPiiYw25eJABi6W0WwGfoAYNnCnD+PSVOSSl0XsNnl2ad2Loqx04cMSUNokA
	48yNuwj7VWjd0oeMaqPBf9Q+mBHiaIISyuUIOneE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646219484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jAy6LJcdtHHA5qKOgmhfHVp05s6oc2XdLHomoYlIa2c=;
	b=Lkmvncne+oReyJHzoMEGFwplY+ar76SvVIL0TpehcHXKt914eO9JoEM/UxMVWdpy
	1Nws7mUJ6cwzz3RtawcKp9wAkHVC8wnRFKde1Z2SiY+DIbTnX+VbkNPLJjccWVkFU2V
	cqoBm1pvj2jQOCKkhcfox3w1KQXvuMRqBmMqBdnI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4a53de56-8c13c4b7-44c7-4a10-9b68-ed76d31031e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 853acd26e8eae11116f8d6f93297460539dd561d08e2525f9a764c521cb95398
Date: Wed, 2 Mar 2022 11:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646219484
