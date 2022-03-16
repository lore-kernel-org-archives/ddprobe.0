Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE9D146A9
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 02:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647399385;
	h=To:Subject:From:Message-Id:Date;
	bh=7jGsBkX3Stn7Yt9XiCDYXHC4Z36kzQUZ7FN7qSHZ7vY=;
	b=BUNgj61pqCWwcGYwPXwQotiVagmuGB30VLzHF7n4NxLnxBmOM3oTStXC4U4cS8MF
	YjpWrZE0/popbBOXEIj6rzKmdmkBOkByX7tDr/VM3CDcVp5VjRmtC9np5mW4NVJL8HS
	yuZJDtzwdAFiYwNneuUqwvaDAscTA853IS+JXkvM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647399385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7jGsBkX3Stn7Yt9XiCDYXHC4Z36kzQUZ7FN7qSHZ7vY=;
	b=bwurs2dcU3rE+i4epiQOET/3kzIoAlt3mFdcJKz3dL/KGKrvsPmFrMfa7v1XrY/f
	ipvAmeeI0ymxaEF8bacBru9wxbzuXhXlg3Unta0ArjBGX6s7cOCOr+zePSlUwJIVZy7
	rWSF1E8PacjDR33vNDZW46ocxEG4gOxfoGEiOEwo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f90a7b6ad-4fc29649-b330-4c9d-929f-c317c9103df5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 10c471955f1e4741c6f5d38659e36557ff690360b97a7b50e55fd27b4cac441d
Date: Wed, 16 Mar 2022 02:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647399384
