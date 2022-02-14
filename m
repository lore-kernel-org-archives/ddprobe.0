Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA7D67E4
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 05:40:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644817256;
	h=To:Subject:From:Message-Id:Date;
	bh=EMclRqr3ZcUdPj0KqDJ+G3o4LkjCjbd472WfqAxH6do=;
	b=JL1o485q54zmDvjp64dYjQO11DnnTO67/dyi8NqdTscJdaY1W6ObLoooSz4DGm/K
	q8tAz+DO3Ob2zU5ZpoO5BsryprDRqRtwwMlHMs76VSCwYCEtSjx4OAn2m1LGZQGpIh5
	668XewVxLE7oBAyEXryXOiUKnPgZiaB9DNF/kYQU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644817256;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EMclRqr3ZcUdPj0KqDJ+G3o4LkjCjbd472WfqAxH6do=;
	b=M2UWpDtd8Zi+UcXT4dL0/GNCmyZSRa7iFSWZsfG9WgsardeqB0I6tcVD3dZQ//z0
	ZD/nZfnXAs/8O/gIf1mSekKoHCYkEylAdITtcF1ZSn1Ls6fnuxoUOIOEbRydwSFKjwJ
	v0TgNWYb2NJGLKQW7ZXB+svjJ+1rO3DQiM1+hFLY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef6bf8ec7-dcbd0a1f-054e-4b24-9c95-4b9a81eaada3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 69f831b07142d5d5789ef47805670395648ddc7370283a19fff3c4c3d61ca785
Date: Mon, 14 Feb 2022 05:40:56 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644817255
