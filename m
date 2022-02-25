Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84FB928FB
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 20:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645820784;
	h=To:Subject:From:Message-Id:Date;
	bh=d2BB1Ufkg2i+ubX4QUh2q1oaXG64duPhfvoyNvX3b40=;
	b=GJQo88h/sR5MB6MS9jn0LYBnfXH8bsV0RLve/i2OdFmRW+QzKK1D0x/XgidsEXkL
	A5qYeuSWR5XBaR+EweNr7ZqC8FZ5GBo7bhVRWKSX9fZsj0nzI1WfVY0TQR1GpSrQh5h
	yTQQl3tnzh8w71YXuDcGIOsnLyJm0NMBDICc51GA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645820784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d2BB1Ufkg2i+ubX4QUh2q1oaXG64duPhfvoyNvX3b40=;
	b=Eik4Zz0BvwXBE/bAR832hwBHYNag/KiMbuHJIcDKEgH8C+kfMvrhkpS3pP1f+jo6
	GsWJP1XtcX5vMoYNwWFFtm4koNUWRKZu36VgEiZgbD4/MHXSbzl40w7XEW9+lZ6lM5u
	Pp1pH2s4anDpTM0Ykmhaa9caxcgr0Dy0BpoqF/sw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3290306c-396f8de5-337d-461e-9e2d-b538263e932b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 14f33d7f587bf9dd1fcb5d9f3e2503bf1a9ab34e25c88f5eb7562ed1f18e5a00
Date: Fri, 25 Feb 2022 20:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645820784
