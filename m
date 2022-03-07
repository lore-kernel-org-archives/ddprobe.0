Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9678B7C
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 19:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646680884;
	h=To:Subject:From:Message-Id:Date;
	bh=rapEjzxWgUbPcYbsI3VIsiChM+DY/kjjSsy+v8tGA6U=;
	b=L4TG2BUPdBtaUGioGB9ZML8+h12d6Uz6xDlFij+F9qdOs/5J5LH22LVmm82mEYgt
	C6tQAcId7SE8bR/wVViCMXlHQ9Fe2P/W/rrLcCrAIZ2yd+BIKUYbUXNgmr0Uh+YB8Vn
	xQMkP1BA3b4ygz+WkwMOEr8gy2pECHWahCi1vCzE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646680884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rapEjzxWgUbPcYbsI3VIsiChM+DY/kjjSsy+v8tGA6U=;
	b=EiaOKYTPwAStuqPqX450blfGmlmfijy5GnTcBVXY7fatMxnnCmsmTJDCquGymNmt
	iCLNnzEw1zZcwuhVcA9Tr+s0r6/rBAwClF9OwS+IHMTWUNmL9lED9/dwUY3jY5H020E
	F/PYj5OmSR1A4z6FUFFOepx0v+Zpcbmn77L0Y18I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f65d445f0-4229d87a-b1f6-4d0b-9fcb-9c00c0ee4d8e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8697c94351ffdcd9a877952515eaf2a4937cc65137d8a9b42fb8f5944d38d283
Date: Mon, 7 Mar 2022 19:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646680884
