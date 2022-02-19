Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53BEF539C
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 13:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645276884;
	h=To:Subject:From:Message-Id:Date;
	bh=jiK5l7iE3cw68x+bEpvb0u7Ca00eez5BWHSrK+DTeQo=;
	b=fDU7IWiOmGtcA2W3AVpjziMT/EiBWzgD80FnYQiYEbgus/GzzbLYK4r7wEw5uSkK
	vD7AnjPuaVLabi3/fg/ao4zFbjoR32XXbZi9xXy5JsNJ4KSVr8lvxVb3vpjLWh/aG6x
	3JGvUrrFCnEx1jtteaiwrUj7iUjHJ85xyl/mFNCA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645276884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jiK5l7iE3cw68x+bEpvb0u7Ca00eez5BWHSrK+DTeQo=;
	b=ROHmPlE/FNci/B9mJhuRd68TnSXfl4mDSbhE6kHfUQ6xc/KquNtROzsks1c6/x3G
	AMUJFHi33ervdH0BBFrZlqnihPW0pkzhWDSc1NbTp5mtqULdprxSDxkk/f0tcfuC0TF
	ykDPGM7AoDWaK7w3kxjvugLPVugONjmBdvqdTeWU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1224ef61-948294cb-28b7-446c-b272-5d31e4b8b52d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7b1c49ba81a9fe9046a43f239fc9b68a4427a7470ce7b622596210e92bc48688
Date: Sat, 19 Feb 2022 13:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645276884
