Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9AC91109
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 11:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87028C433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 11:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670670687;
	bh=BBCLmIIrsZ0cl0e+mt1bYFio+Gz465ymL6zKOXhjIu4=;
	h=To:Subject:From:Date:From;
	b=HKNNYOjv2wJZVpYFyrjM123GJ2YbAYX3JPUtiYFfhiBf0i2LLcctNSRA5Z01uowAE
	 0aujhs+CZ5X3K3IdC3G4cVA8+uzqNSNKQEOFuJUPXtu2uOXjsUfbBTHRXzPyXNvRpq
	 jRwJr6cpfUScmWILZrC9LwjwcYE0jtmzxg7za1Zgq/IRxx/pXEA5/2VW9DNcUTkQ2I
	 XULOz0o9j/pFgDNItl/okPS5MFCCdKei+kBlC6YDK2SGth03HTDcKBoLg/fLMIcGwH
	 xJI4yZOZsZO76qRVv5j9LCOaq3VUQ3Mc5kbxyXJm7sw9SGhT930PQNbTbE0ghb4Ics
	 dQPdqzS7fqFCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69F6DC4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 11:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167067068741.13612.11762936723848467146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bddf70421878c9ec2857365260146c8891a9323c119135041d11abd7cea13ef
Date: Sat, 10 Dec 2022 11:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670670687
