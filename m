Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2AC5559D
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 13:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646054784;
	h=To:Subject:From:Message-Id:Date;
	bh=GDEUZtVFX8wqLOMmsHU2565cZHLtxCGxlqEjDOzCeYQ=;
	b=I80n0LdoXw4vNnv4ySsIFHjH+AHg6tKtBl1aUMHlQiZC6QPSd/lAbHP+DLm8moCw
	wO3PiICgM1ma2mTCONnlSg6i3FuIIfoA8q5+dFNneLoHeNRvrnplAQhynmieKocWXfC
	BIptRS6UqPvIsOcsQKzLCtXcUdsHFdZOPrHqcnSg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646054784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GDEUZtVFX8wqLOMmsHU2565cZHLtxCGxlqEjDOzCeYQ=;
	b=l69vUkR2cZRhqbLd7y3TC/RUShKcuCEQmQkkPh9Dkz1Mikz/9+Pk9kMJFlbV0v5A
	ASWuxMNFsmIaFwy4Ejtil4Vm7Jx4U2BPlBC7IN1bZ63bAHQTPIX3r+zwFB2fQQmCRZl
	Yk/yRNzhkK5qJcuTZDr5dtCFde3NMJspyOK/Jx/8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4082bf38-3125be5a-c7a0-43bd-afea-78fab55c271d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 488adbe446a49a1025160993aefe179a46e043245db6a81d6bde67dcf5f53302
Date: Mon, 28 Feb 2022 13:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646054784
