Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9144336B
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 18:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646332585;
	h=To:Subject:From:Message-Id:Date;
	bh=1LFr1fH0pzING4XnRWWaK9yiAl6ZaR/l5baNjk2d/O4=;
	b=WfcfNBf4GL+ZMODgVB9uiRtu5+R6btbfSv2NeTP5Q/igOKJJjtwU9ELA5321TvI+
	aflFLuTB9G39dj8Wnzeb5V6CwidFughsfd15L8wi/xP5x8jWbd7SfYS0WIBETM5wAHW
	EZ8jRX/qoiVU0DrV1qJ+OkcsPL34W4BTvnsxu4a4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646332585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1LFr1fH0pzING4XnRWWaK9yiAl6ZaR/l5baNjk2d/O4=;
	b=YtcSCAWos5JtmtnoWUBCq+Jzx+Jjiy0ZJiVZRC1MThKQbH5U6EZ4U/Ggroc1J2Mu
	Dor1ygPA4+28RoZ6OWE7wwuIa/vMFuD5H8c1em0o/Q+KWWQoCQ40DTnHRhU30/gyoI0
	U6QUiGGUtD/mvUcDiazjUjVTr1uXY3VNpId3tQkM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5111a391-ff9fda19-c7da-411f-8a8c-691b97cb0563-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4fc11cc5ee79a31a6b719e855522d59124ce7e85913c6bde380770a70f2d0eb1
Date: Thu, 3 Mar 2022 18:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646332584
