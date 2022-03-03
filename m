Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A639466A3
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 13:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646313084;
	h=To:Subject:From:Message-Id:Date;
	bh=19lqYTKmZqG+mvMwLH5fEnspaXps37czinNZ4E4gR+Q=;
	b=LyGZ5X2kZ4wq0GolUUDN1bci7E7GHXECj3vr5v2nSQeP1oAOZP+CrPWM1M5w8VPZ
	T1Maqvm7GNgqjhP2LSv6hhINym+1R7WHu3ustSvSc8CjzpQR+yRc34/SDmy9wnJ/06P
	TN5v3BFwchaaqA3mgBSRVmAt1rp0jWVRZQzDk6jc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646313084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=19lqYTKmZqG+mvMwLH5fEnspaXps37czinNZ4E4gR+Q=;
	b=GI2GCC3cdDDr65TYdY+UAvEMyC5GfPBxbdzVoJSJN7m0FUxQWjQff45mSntwhprg
	CB2TqzMUMunm5TM4AgDTu+ff5iNa1c+EH3psQK2+th3bZ5QVUrbgqvwdOQ21ZUxaBom
	PFxqCsk2pYT9At4mF834zTHRdZ4Wo1/DtlIRXWGw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4fe8174b-39d846a5-9af0-43d5-871b-238c1fc47cee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fe085acefc5936d76e22edc4b1f5688dcb06ab6593d506ff83707fba4c00756c
Date: Thu, 3 Mar 2022 13:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646313084
