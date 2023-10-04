Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 965A615EA7
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 14:26:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0C4BBC433C8
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 14:26:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696429569;
	bh=PdrpX3b8G4XtTZ/xBBxzGWBEiku3f+A7n9EIWVCaR54=;
	h=To:Subject:From:Date:From;
	b=I/cdoKwO5bzV4aGggeep7O7DV/ASjlOaRDVzNzyfYzBV/SzBCtmhBvslSyIXY2rFr
	 qimma4WK+B/OAqsnWnImDUpTVSJbTcn6baQsG8LMvfaqSz1Au/+UOyYKi5OCJi9Itl
	 yYLPNbZ4tsetoKODpkf258ebqLI+ON5mD5owA+XlkBpzoy0Ko/opQA/4aYHNV6Wvy+
	 4adcUQGJOQy6MLJiAGsvLsl1lqd3pJH1iOsEpW4LTTvvutLdKadTpNyD6vN1BnsAN9
	 EHZdTcM84bKBe4y0i+ZfRvwbpebTmgcDZaDctdGiSGGVR9KnS8pYZPncRnlpbOblRm
	 diWMK5Ca3Z8Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1BE7E7C4C5
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 14:26:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169642956883.30582.15255166802418596984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24fa221939676fcfb75376cd56dc04fe8e66bbd9beb9c34fb3527abc5932e23c
Date: Wed, 04 Oct 2023 14:26:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696429568
