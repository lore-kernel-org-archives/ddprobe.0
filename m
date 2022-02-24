Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AD297B
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 01:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645666884;
	h=To:Subject:From:Message-Id:Date;
	bh=H57tYEMp6XYQUMUbtxPpLHwYw/oKMD6PHlrz4PbGEGA=;
	b=dWgYkwsRm/WsMAaymJEvbk2cBOcJR//tPfyRUw5DB9WRXS3ACUVLwyQeqiSp1Zyx
	0LAK8FUGZFKSnVZaKDBPgxLseev/ZQrfs5Zv6POJ530d7DHlSd9GK+cEqNQ0XON1vRs
	KpjLNCczFDywc+FFJZmtVzfO8Du8BdTVImfzMHBc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645666884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=H57tYEMp6XYQUMUbtxPpLHwYw/oKMD6PHlrz4PbGEGA=;
	b=Zii0HRIjS2b36vRcN2E1CEuRfcoz22YUzOR6FKSA6HwK5SDrnk+5MUhldYuHaxlC
	i9iyUSMVlPnr2fBtIgA1qeZqszJNQ9q2tmwO+DJPkekuvJcwXeLiisoNx8JmTwLl4UX
	Wsz/7G45YHvc9zYm/pmuktmzgvoWEGw78Pj/qoBc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2963dc6f-bffffb03-f24c-42e7-92c1-91b60b199d6b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 13ff525785d8dcefd10d9fbdc33ec7f08d23475228cd8b479e6198f135919459
Date: Thu, 24 Feb 2022 01:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645666884
