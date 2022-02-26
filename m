Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 092C57C
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 07:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645859185;
	h=To:Subject:From:Message-Id:Date;
	bh=sSGUYYG6OKups+ox4pXAl+V2kldwaNCnyxOKweReIMo=;
	b=kMTDJnKvkunH8BWD6I85JJtPhiPUiimBMurkw0leUQkFGp53Wnie2GZa3X968Ps/
	aICU+wGVudd7x0OLtoV3hbO94woFK4bWN0LxFZNh/4ZaD5Wf0LZqwK1pq/WkrHrZZVu
	GgRBoezx64WQ792rrZpZCTWvjViVsGrE55ekQ3gE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645859185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sSGUYYG6OKups+ox4pXAl+V2kldwaNCnyxOKweReIMo=;
	b=U959IdLzZNTrrbdladDv/pUQT7OmXmjCD+M4G6vkHTlt8cHsJNbdckCM6YT/q4sq
	+FgjyYVcPZEdBnndTN1swD5ESQEsXsp2a5zZYFrUgtdoNjej/tfRt7GfysZO4/P21W6
	UsJgzQ0V7fjHxOZ+EgAT8i/VOCdr/kNnftlVNmKo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f34da2064-489b9a9a-baac-4074-be41-480261893d71-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bd8180f6dd5dbd80a2128426ee357b54e25b4a8e75a9e303732e681f93f1a208
Date: Sat, 26 Feb 2022 07:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645859184
