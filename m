Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7994367F
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 02:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645844185;
	h=To:Subject:From:Message-Id:Date;
	bh=9J4pNR35Y+wic5301cFLcGu5xhdNpIOeCXS0+PKRJUg=;
	b=EPLvZGM4dBtBfW/dT6VdGcDbVE3HnJYBnvz+xgibQhJGGBT7c6p9D1VU5FlA84va
	qRl7P+xiQu3wulrL5EAuXXJhbgOYTu0m14ffUyQkjOXs+o6wXQTCTipg+cmk1w1MCUL
	++uqgg/O5oIEn+FfZt9qK0C8AdgdHw7/jXxptd7E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645844185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9J4pNR35Y+wic5301cFLcGu5xhdNpIOeCXS0+PKRJUg=;
	b=avpjWujRtFZGy21CegWsJ7psL5W6dHjf4SXugVWTAPUL8247arnvvucResCZejpf
	zeEpeqcto6Gqih+/rJam3ycPPqazbwrL6kb0qXc44SOXGCjLVuIe+5V1pX83T9gZEam
	U6EcQJmEIHQ1ubKui48VJHhAhYA7Mrvaioh9jW1c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f33f53ee0-9a88df06-3d38-40c5-b67b-159c313bfe9f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 38f70070926456b3d2713a32f2322579817d5a6250364e0566d286c3db06c652
Date: Sat, 26 Feb 2022 02:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645844184
