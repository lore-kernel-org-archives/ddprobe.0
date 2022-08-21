Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48F8E46AA
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 22:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661122252;
	h=To:Subject:From:Message-Id:Date;
	bh=ejLbvmb2+aUSLjOUOf9NHfQ/sqjl0zNuN6dQQzVb6JA=;
	b=QcamZhVQ95Wq48yFfZa0Tk5qW/q4RvHe/kGm/fy+XoYLLrl2DkXOSmbmSn/OdI5j
	9aTwXC4z/612doRnXhaJrxnMIqw/dXQGNVZOQSxOTXO9FtHOQGKHwxM2TkBpKxS0vw6
	N9Bpa8dPCySQUZQtlQEgDIL80+gUbRnrhOpDDduU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661122252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ejLbvmb2+aUSLjOUOf9NHfQ/sqjl0zNuN6dQQzVb6JA=;
	b=hJFgij3ZexrCQcu184V/BgfihlDW5Kawrq+RJ3YV9SoMiG6LBKUEBgLsaKst9oei
	8yNCMRO9IY8XGivq2z/BtT5HCQyI1Wfq0qIt6cdbMBRM+TH8QjeEhfBORnbTa9Q7DCH
	p4gxteUoYzSzRmCPWaez1Ndfj8fankO+xhpmMtiQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c29a0f21-35f34f58-d2a2-42d5-be76-7119856b78cd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0d7309fdb7bc0cccaab0094024224f51b558907c6ca73acbdf5bc14b78c9d392
Date: Sun, 21 Aug 2022 22:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661122252
