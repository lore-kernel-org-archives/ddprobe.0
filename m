Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A41B67C
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 07:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645860384;
	h=To:Subject:From:Message-Id:Date;
	bh=iyD85xKbtIhWtq6h00ukxVYyX6U2WzXz+64vPfXF6kw=;
	b=HP1sWC4keTbgMQCbDQqFZ/AftXxDM1YIH/EZNLZO1aoGazLysv16odEZDzdxnRIo
	nW6IvoLD08VTgA1d1WSm2ozOKcRGBktpBa+bWrXCrbXZvsMLKOVE+uhImeLtQWFk0yx
	BH3RHHHPSjA2nQnijyk1VZROeswtyWfBqYVxiukE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645860384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iyD85xKbtIhWtq6h00ukxVYyX6U2WzXz+64vPfXF6kw=;
	b=jZUVm4l9X9gSi15N3m9MDgkOxa8A5bJLdCPttaEzSoQDPNXtDw1HZ9Kj8TISHvAj
	q5JrxEM9g7kLQy3ryRHEE+qRwfMGFRh95tgdMiqfMyOOI6JgZwnMVjT8WMtszi/J46w
	OaRvLUhsUS//DaPVyuayVkkbFvKO2DfAbd4zRfyw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f34ec6ffe-be9cfc37-5280-4562-994d-d6e363ec384a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1627ac8a7ce03844cde41d94dc4836350ed49c7924ce421963f62baa0cb72f24
Date: Sat, 26 Feb 2022 07:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645860384
