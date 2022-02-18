Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA3F74C64
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 22:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645223484;
	h=To:Subject:From:Message-Id:Date;
	bh=CHaZdF5BNTB/8CEdlDZvUC76Vsf8MmPSbMzHxPTvnHE=;
	b=CPOug8c5jA6ixVMAQ/Hivj8ozBt4Z7dPb1Ty+2YfwipWwiZsc4tj2cP/a0vVWOxX
	Z74xPdcYxb/vcB71tyHVhDVj56ePjnIKDZx9vrp1cBQWiGjgjAJMmoCPsnEYRhIQJ04
	4oqOypn8CAYtuZZCR3/WxFtH7+lBCWy1dMAqHaio=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645223484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CHaZdF5BNTB/8CEdlDZvUC76Vsf8MmPSbMzHxPTvnHE=;
	b=kzi+3JAq1smO0nMj8moyDZBAS8l4siE1QO6K4KfmXllKEki9WaZyZj0bPsdxfCSR
	acITpECHscFpl1s3l98x8DccNS53H5/xnw+O9adg7eTtHzwXwCjlm2gVsf/Ctm6+yo1
	GNcoQ+qx62dReJuAoJkoym2mHOFvCo8m6J7WnmTQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0ef61d7e-5764fc79-b73f-4cfe-9f84-34b9cbc4c666-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 920c93dd63bddb25bc1547f76a61161c201cf3acad4f58993092eab884a7c52d
Date: Fri, 18 Feb 2022 22:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645223484
