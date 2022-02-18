Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8842F48DD
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 13:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645189884;
	h=To:Subject:From:Message-Id:Date;
	bh=ZBAjgWZzng14Cfd43dFbL33rJal8rRhhVhF2R+mw50U=;
	b=U3E7Lvauh0YpB2KlTRwTe/dMPb9p+3kyF+izM1NSxeRozaiZa3GDWxej0w1suY6e
	ExZDxzkY5J+m7rsOkHLp+a0nDjUFxPMb7AKnrNcpZk9+Z3Gwok4aU20Qla9dPjzYLf5
	S2dCjoaF9Q5BSbm43vBEKctZpEDSQQHGyemgO8z8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645189884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZBAjgWZzng14Cfd43dFbL33rJal8rRhhVhF2R+mw50U=;
	b=gpYXY3LcYfw93iv2XCpfV2n6aDI8I/PAgvI539yIOq5lSxfS6M5LrpYAsitk9Twp
	rWMc5mnvqc2mFveBNN86q7JG+nk65IMJH7tCpcYT2bGDmiRbwfsQwpmf7Za1X36Rwla
	0AUusMUU/fhcJbLuMnG5cvqQNY9o04b1JV3MaT8c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0cf56b91-c628808f-6562-4e4e-b1c0-543f0ff03924-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: efa4557f2d0f7854c123d40104005ef1d4aeb18ccc611ed5898f132170d87568
Date: Fri, 18 Feb 2022 13:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645189884
