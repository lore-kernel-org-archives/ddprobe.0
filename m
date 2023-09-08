Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E4F4628
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 00:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C545DC433C8
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 00:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694133848;
	bh=3jz4eomPFFZ/y87OvnMEDT5BRQ1hP0lh3Yt1fmwYMJI=;
	h=To:Subject:From:Date:From;
	b=TTdqykIjZI+zsd1Tf0qbDG5qCxOVdY10aBIOcnVSIJv9y3izBwsfAFePsWzfiIdYc
	 fvR/pZCv27aFFPHqEVuTWDpjvOWInZi204xFm/CbvTeB4CotoDlr/bKnTXS/k641WK
	 Q/smY6it3VuNrqfAAhR0VhK2UCDmcUAoWozfAcTBFOdI04g/E6USginCmC9hzr5DbU
	 ipISl813YdQBqSxW3f1ilDJSAfE4eDxcn5HeMCaJNsEjwQWp9UIV13Kfn+vTZDgP14
	 +Z8lKG2/LMQZKcT6gwtISMZQTq1JrdfVvi4YuX6/6MIIdSuf4yC35s/2krvhm0SA3C
	 M5eZhEp7wYygw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6577EC875E
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 00:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169413384867.6651.15447648136970957182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9497cfbc9048cf4348a28bd0e451e176826e49517b2850731ea4d22a3138e0e8
Date: Fri, 08 Sep 2023 00:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694133848
