Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BBC929A1
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 23:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652742479;
	h=To:Subject:From:Message-Id:Date;
	bh=RjWH7zyTElvDxlKX7vt8MGTTNiHWLmQC7RBfOOGVFxE=;
	b=F0dEQ3g4TR6a/M4s8Eo07deMGsiKJILZZLvmpvghkECZnP3yQGyPGSRZiTA8DHXh
	sFzniKkPIUITHgWscjEiSCynfwQHFFedUYzkl9QLxGe5YkDhYcZm10+JZ99B6V4Mnah
	UpsCgcre3ZiJK9Q3hrEF40jHnC4xea4Q45nLoZwY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652742479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RjWH7zyTElvDxlKX7vt8MGTTNiHWLmQC7RBfOOGVFxE=;
	b=PJIHUnfk5O3mQHpKdPiuazbMbINJNU/O47c74ZlrUwgxMX5vrQl2VDnK39+68/+a
	hdkUgEJOAjZgvCv1SeZG5l+9Cw+E9Ne1H238IE1iu204t+2yJse8CJbip6n9hJ05hd4
	u8maBcBZpl4pKoVzn9n8ZAACh8C5bNh9cFd3voyo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cf20ddbf-53786027-f382-48f5-8450-62a191b65495-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 77a9fd0e66f69790af1d7658eda54b2c57ae7b16dc96f734918a048a000ca05c
Date: Mon, 16 May 2022 23:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652742479
