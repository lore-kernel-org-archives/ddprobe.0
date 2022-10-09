Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABBC42F56
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 16:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 675E5C433C1
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665331253;
	bh=3k7Kp11JGyvQAfhdv1bxuDKNSyg75AjGu7NMaIg6JuY=;
	h=To:Subject:From:Date:From;
	b=k/QbGfHrF7wafrRtGS4qVGgSQj861P4LlP9Gcsm4SnfTteZ/QnHe7ZAUx9FEX7J+t
	 4lfDQMPNsO5oQqiDojSzxs6YZ2T8W67Bs3n+6aWCqhDPbM3LP/YyqlUhycjPgw6Lm9
	 VotamWwfrt06wkSUTKn5Op4LG2vX2ngRsuJA21V3hxbQsQl9nanOdM1yR/MktYV/FC
	 /e9KAHCOuLFIdrpZdcfz5WNEijl4TZS1kPDpXyEzbxuKCJyjTvwx5+yEwUpEvRPXoZ
	 r5t92REZt5Gy0T+RKGuhAgiNS2JmDpb0AqHmwRE6oHtHwVM3EZzreFcV7rSquXDzvG
	 sj/u5AL4cjZeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F75CC433FE
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 16:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166533125331.25914.4660431289506575406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55f6c2671cd275c216a6ab270af8fad72d61deabadb2efe6115b59a89cee265f
Date: Sun, 09 Oct 2022 16:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665331253
