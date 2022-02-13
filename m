Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C19364
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 22:30:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644791412;
	h=To:Subject:From:Message-Id:Date;
	bh=+LqVI7iUGyxJS4DBbhM3PpNgTH6eyL+dE1v8rldmbMU=;
	b=awsaV8DlWLKsiuv6NZthlvpiXjw9gVuEszXZ4qrAe5NRAjNWrx9vyQEQIdScIoT9
	IwzK74XHMqjtN2CURqrHBaIQCDplDDd8eZ2Ty4UAePr8fMCR5cOhipKwVa8jL664fc0
	423jdv7RpbKb226E77LNFi3MfMVrqnQgWZE80bzc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644791412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+LqVI7iUGyxJS4DBbhM3PpNgTH6eyL+dE1v8rldmbMU=;
	b=Tp3GASmqaWLAGPvUBjbfS9nkjs34z8Z+ZA4tI92KePPVlvatWXlDTCLNQVpvnYxd
	dDRC85b+CnZoy11FMUDrtkyqdFmbs+iUnesYov2mWvC8oszCjaZsc0QBZwm4UZ1bf5H
	ZJJIt34gEd5Sb2IDZDUtV+8QfyUqlqUCrlr1Bvgc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef5353715-06fc88ed-a673-4da8-aee0-3645c8666283-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 94091f78a77f687d5898d59eef24b6b19dfb7863413d79260a25809ed3cd719a
Date: Sun, 13 Feb 2022 22:30:12 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644791412
