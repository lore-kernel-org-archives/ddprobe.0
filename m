Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7129443D
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 17:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659289853;
	h=To:Subject:From:Message-Id:Date;
	bh=UFPxLE7M8kXCkh50mJCLZOb+XGf67eUs0ePnR1pfESc=;
	b=KiSNyOh+YnVbUsOoj8dFRQypPbUnNUN7kLmL5Q9mWnYNKkh7XzqTuuDv8F9YAffW
	uEhukA4nYub3MFpAG4YjpozY+sHQljxl5fmFpA1ZgHoZQTDsPPRRI23OGXL3pWEqNjD
	FAXO6JSQnN7bBC7WVmkliT/N0pMEiFKJv2lvZoZ8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659289853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UFPxLE7M8kXCkh50mJCLZOb+XGf67eUs0ePnR1pfESc=;
	b=etB2nV++HxmTICrnvmu+liCAP1PuZyDPx1QHB3dvGLFsYR5MGPE3V4SZVchOCp7K
	QoaNXNzcIRN8YBQyDaU0co8Bk9zA9YTl7p4thC4rJiG9QcmVSlKB03aOGi9BinwZs0T
	0m5Jw4+zC2cMfGPvH6pwznuh2y/AM+tvUwnzjY44=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825561da84-288671cf-9051-4f7b-b98a-b266626e6024-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 082cc09bd750ff8dc27e83ad05d20136edc54650408c984f6e640d58ec82f26e
Date: Sun, 31 Jul 2022 17:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659289852
