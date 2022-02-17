Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0929D4363
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 17:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645117585;
	h=To:Subject:From:Message-Id:Date;
	bh=rHLPE8axhcuHmr3bbZcyvJ+gwPlkmUsv2ThyJAikeHI=;
	b=doNBstUUsezwwhKJvvooN0So0tVa31UZ2v4C1uSCcV8r40pUTkJkJ/fZt4WZtQjY
	SqQqD2cvto/IFBkBtgKNMBiiz9d58P4Bta6kkdv/VvOY7LY8Z1EH49HZpE/tCEvXyjM
	y3LJyIoTUdTsR497dimoPp1Ysu+GnyBloZboJ098=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645117585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rHLPE8axhcuHmr3bbZcyvJ+gwPlkmUsv2ThyJAikeHI=;
	b=EwoV1V4X/P4Dwl0bhKN5gBFlIgIv+V+A4lsIDKNqg+yv2LXjcBzHjsxT75ywkHMn
	6SVy5gUSHbLulnOI/aCeUS5rSnTL5WkFrv+CY5tyz85QvAm9yU/uH3Ci6nwlDvuRLPL
	QsAAiypFCza6NzwSj6JU5LszpvSPggMxGbs064ig=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f08a63573-8cf9d9fe-586c-4b8f-bbc0-2c4cc3b72c26-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ee70141bf306ce734513cb91bc6a25d254c3626191772ced6e8b52fc76ab63b
Date: Thu, 17 Feb 2022 17:06:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645117584
