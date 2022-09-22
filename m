Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B20051FBA
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 03:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F558C43470
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 03:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663816253;
	bh=v5bcazbjfzjYAdUENs0DJ49ptwGHm2As5+2YZaUQIos=;
	h=To:Subject:From:Date:From;
	b=pnkUaPi4zIvcHE6/IT3HV3OiNnrO0HBJhAKPnyaXlFl6IOCQf7W6GWSEeX9oFHjnZ
	 kWtdrajMisy32GgfbEJnjFRGAr3iaQMEm+Jt/u9RTKCIrr8LhV+hJrHk+gGqiTFICb
	 X/u9iCLtRLGwwjPM8CtSKdOmmjY7lCKtev56kTTFyPPYT/dHqfJFCfSSfdVQl9Rwg4
	 bL7ks1i8ifBtarHjZjkaBRLKsd8IpNh/n6f1SAgy/vMqYtZRF2QMI1fzBqdMGqfUOL
	 mOGJ3Ti919ZeQLsf206l/+ZGyShdUGvXMJSd87XAgcdRFBTHf0OL1wXB0wyTapN3gN
	 aXG0tmoKkLjCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59796C6FA8E
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 03:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166381625335.11520.9414172500940895248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e43dd7cd04fb7dbb1a149820aa45c76d1dac309b4d2a8f721469ccbfa66307d
Date: Thu, 22 Sep 2022 03:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663816253
