Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27BA717D0
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 14:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653144779;
	h=To:Subject:From:Message-Id:Date;
	bh=dS/PfnztWWl27u9Np02bDLnKGCNRl3FYjU8njt4InLg=;
	b=GmKEDrlb+wqUMPi23V7hsESj7wdN5hTUIRnSYVGGV5WMppFwv6Y9cSvqAQYF6Pur
	NEwKfrjuaArgq131pACeKxCqbo0u7WONf92niVO7P90VQs71iC2DbmWqCzE5/3IbMDp
	ylCADeLD0TmI4k7LOMx079G7b2DQRRtUx08Gdnd8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653144779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dS/PfnztWWl27u9Np02bDLnKGCNRl3FYjU8njt4InLg=;
	b=KNmJEOhWag75ykMpTaT5MkHY1lHnfXv+rFuoGtd2UEJTdTxpqHfQUWuSfbH1zKCF
	zKCNP/fmHkPnMSIbYeD5yRUClbUEacmKWu/c3jm+iCxcUZ5veqlaH9C0lH+nOXRJd1m
	KiaUy8yY1ZePD6kFEQ0xtpkSAGRFvC0UbUsl/t1I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e71b79f8-f6894b08-8bcd-4718-b7db-533c0aea7cb1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d0b7c199a54df9c91e8384dc509382947392c1154f595dd8b605799c148fa737
Date: Sat, 21 May 2022 14:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653144779
