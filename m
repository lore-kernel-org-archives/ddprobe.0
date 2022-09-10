Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D06DF1397
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 15:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77192C433D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 15:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662822053;
	bh=nxXghDSrrOMwUdzzinxSiMki+PH49Y2uwkl02mkE6gM=;
	h=To:Subject:From:Date:From;
	b=jnP/i0icwR/QeCgtkXir1pBYnXaFFMh9fzEp+LbwrawFNbL5vsXMyoN6j+U4YdHXE
	 fEZZAou0BIXdG9s5pZEYt9KvNq66kgBTwiht/oTxDxuuT3aCXqc6J2XJSFkY3PfSyH
	 J4ofhlcJrkDanYd3OSjxNlewKOfJvnHLBpyBa2VI6NkqP2lt9dFGqi7CZ/xrkX5was
	 27INOHn/iHvFBS2oTRXAx4TJ4FDMVvBqlEdpYTpszKDpN0xt8URnr1HA8zWvLQY3Yj
	 llMJ/0HjZoAt7KeSpgFa0hEdbwoBiYV82EWB3Tw94P4AtXfqwvJHAvULAO2a+V6Xhb
	 n/T+cUKkPTP2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A8E7ECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 15:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166282205334.23465.5348880411205672688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ae416dcbe70eb49d12d1ef43020271bba5ea81641a0e71831e084cebc576cf7
Date: Sat, 10 Sep 2022 15:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662822053
