Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 781137E
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 12:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650026218;
	h=To:Subject:From:Message-Id:Date;
	bh=Y3IKsADeRMzHVNwO8kfK6EqAk7JFVGu4dvhi+rNpaIw=;
	b=DFUJHVYtTJxlu0kyZ0B+DPQjM9QPFat3APnOBbAnVB3Lx9Qz/STy1ZXqAV5+5008
	kmAwpuVnWh9qgRS4GfYsY1pIEfnY13dR9aCsL6bZEyN4XcbMeLQRLA4kknt6Qz3h9gE
	IgLPHvYp6RwWrwNcu8BQmj26NlrB6LGwnyYNZcDQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650026218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y3IKsADeRMzHVNwO8kfK6EqAk7JFVGu4dvhi+rNpaIw=;
	b=gm+f2hZkF9L/h7ZXfEoQZz06mbuYs+4cOnYUk3aXlNRtxbNqiQkZxxS6gvAVmDJr
	QJ2K9eHqrghr1CBUYHkMbMivpeB03raou0xfRBo2Gw/nILIKG8ck7LIqGqLpcE9JmaH
	jlhCmb1TSabcSRYyt+O9VWm0pA87JiqRxaDWC1DA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802d3a033f-c3cf2eb0-7193-4414-ac7e-352dc45116ea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0c5f8a57fb39cce7b134ca035cb6596f5d071aee4f6619d85bee7c162ca81c31
Date: Fri, 15 Apr 2022 12:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650026218
