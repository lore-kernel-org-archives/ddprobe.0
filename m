Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1CA366
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 05:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEFEFC433EF
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 05:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673502087;
	bh=Py5ZnNHXW2Y4hBfnFRaiI4Nhpb/2jbFEFxF6ikZBawc=;
	h=To:Subject:From:Date:From;
	b=beDNqouyZ5A3apFIdT+VLPPEaDu4+tNIaBIpjwNv1FhKKHHoAwsutTCTYErm4nFPB
	 5AW+SS1IwYuoSSgc6Hww1XJhS+dZWK0j6GJOvlzPmz3wDEAuXutC6/HnmLOMq17zh3
	 r5z5jT2M6Lbg5e3NwexBGj4nlBbXs1c9dXZm+y8Gjd02oLjm5I3DTrx96lUtHkWW9Q
	 a+JGt9DM46nkIWW3TXVPVUzKK2rr9TqJnGGvYAOdC4mLt3oLmqkJndbKi97aDexLEv
	 dTtLceVdcEWAQOk70GvqCmzGZkxzs3ZzvpBIyQwNENoKVatZXdLgKf1utIuQ+C52TW
	 tgjS4HeL1Ou0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A356DC54EBC
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 05:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167350208751.19677.5556920879673811710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 194e9d50acc0da5a727be6830c1306e6849290845f526b147b1895775217aa5b
Date: Thu, 12 Jan 2023 05:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673502087
