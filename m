Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6050816
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 07:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 999DCC433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 07:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670569287;
	bh=ZZ4qNw4CcSq1f+Tb4cqF63MnJaGsNVIK4Gwv0DL/V+A=;
	h=To:Subject:From:Date:From;
	b=Bd62C4aQcWW+6qQWNcQ5JMv56G+1ygF7CYoXBTSIi9qQFhUw8+Gl8+6u9OG1e+hhG
	 4BCsXgxmhYyC1EjMpwU20V7RZW3/OaC1tT/IwkrvMEuRtAys6vD1Ne6fX2fzUxYXwq
	 YfO+EBAhuzJms5Sh29EtbE3Q462PWR8KZv65Ogih8QgLZwNRy41TL+piudSymkcgwY
	 0ct3TPlhOzd26TLlqymTf5s2p2N/uiKG5sawEVBk1WRjI6ffWZEFXz97UK0+k/jXsO
	 G7EzG2o8CzfNMJqEMO/FbeqjdEusN5HvX+1R4tI08OqIVP3Cb0WpePXzjWF0fSK9XK
	 jEbL6IlEe423w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75F2FC4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 07:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167056928747.10246.5377884103323717886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1276711914d761eee5c6e67b2a85e8311926a574dbdf29db15112945e7365e2
Date: Fri, 09 Dec 2022 07:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670569287
