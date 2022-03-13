Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98D67810
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 08:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647160884;
	h=To:Subject:From:Message-Id:Date;
	bh=GM9TytlSSQq3sc5SvslWnA1Gy2nTtmI8LFNjLzbotUE=;
	b=PcymLV+Kph8So+djRKapB9MKJHtIO8Oy1hE3qtDRrPjcRr3w5iLY62uFkR3VbmYq
	oJ8xk0a+VHDds9BfxkHSrPruBlbzC4bI4n6o6/QvITdLGb6KXJFGN9Bw6dQQ2gxLFHu
	mR6TvfxGFcTRGJ5lKctJ2jd0dGPxBsFGhL8RwmiU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647160884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GM9TytlSSQq3sc5SvslWnA1Gy2nTtmI8LFNjLzbotUE=;
	b=QNUZRAjJRXGOHfFtbUyn/bXA8kkfRIt+uB9ADq70OOIwLH1kEyjf97xcD0m4b1Q4
	30yM406wAS3iGO0nr7I6TkD13sbfqImpa/jBn9EiLvM0EQtI4t6fXD4g8K0wVu76UrE
	V9MHWTwmv+Xn4DsBU7QnDCeEviLI7+9pxcT8ykFo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f82707e3a-5cf3fa40-b912-4177-aa98-5d3783b021e0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2718add765c3e5240a8aef979fbdf7c6003072955514758ef3e5e45bed3e0562
Date: Sun, 13 Mar 2022 08:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647160884
