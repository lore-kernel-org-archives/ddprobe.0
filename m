Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73060441A
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 10:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF62DC433C8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 10:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687602188;
	bh=cj61lEswrKWenoL3kWIzkdy0ohyyz1dNDu0dZ9+LsnE=;
	h=To:Subject:From:Date:From;
	b=Rf3K8IglHJ80EoFAMsT2mIswvvWGi/l/WMUM3YCf9a/lrBfzm9xfXXgmP7iygULsQ
	 NwfZAKd0BXpk1emFJLnZ40kBcaz0uNbYeYdB/UU+slwlSG74RdVj7v2kiGPDUjKnO/
	 xFIF/TBvdYQmhl4EzUN707G8hJDpgXWlGPPx04JDDZ4EhagB42RI9Af6LYT4I7L6eJ
	 Vl8nkMPNMl0J+wyImxjohdcMcAu93AYZmj3wUNwvomYWVKuN0N42C0txR52pRfXXMb
	 mXUHbHIFiI7IyRenjlb1sIsUfoNsJYUF08sbVlwEnD+NLdo7wwW1Fm/5y/wMj5enEt
	 ZTYVFOeK94C6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E1CEB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 10:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168760218868.29024.10106476523709345289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3185aa350039f2e3a717ab826776e2a9aa14fe0e02e329a78577b1fc87baa73e
Date: Sat, 24 Jun 2023 10:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687602188
