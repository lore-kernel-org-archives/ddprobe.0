Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB16A373
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 15:00:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644764420;
	h=To:Subject:From:Message-Id:Date;
	bh=bhzYhYZSZaKdWj/sJhAp6J7hnLJTzvqqYFgcIGulSok=;
	b=PdQvFCaPtpOIywk/uCDj/h/y0bVflogxDh/tV1DB0Eb3ZiPULpGgXzFWJ3d40Puw
	XKZs5jccVs8ouSpvewOLe3aAsgIRWtDGfCrsRwd2Zk/ANaNPNDHJoG4vLvbNIqDDHER
	QqeFhEMM5zoTk6vok4CNeylDmXAABv4kG8nCEVtQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644764420;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bhzYhYZSZaKdWj/sJhAp6J7hnLJTzvqqYFgcIGulSok=;
	b=Lgnmq6E2Wt/WPaWc9iCXkaUYTAIavvFq9wZguHrSSd+sH6dhCZ1i72grJGsIABcd
	QQQNPeRsZ0ikCXhYcqGCn3DBj3QRekZD36ARWGbASzl/+I/EqaKdzVMeCuzqRjodPeK
	A6KH9um4IwfHOyBpBIcCq86c5MTSHDgjtJCA00sQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef3995701-866e8e28-dd9c-4622-bdf7-7ab83acdc4b2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4584bda07388e7805869f5ec294493f7bfd6292396bdef5a738ff5d994500f29
Date: Sun, 13 Feb 2022 15:00:19 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644764419
