Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6075A10F9
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 02:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C93C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 02:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686276845;
	bh=aDq8+Uqjknw8TYk+qIPwWte7C3OvVH/qpAZ7WklgeUo=;
	h=To:Subject:From:Date:From;
	b=WQLQ3cbvWjjsjtl7Ep8+cae5g/E+JNB+P8Tk1m7JokfVDpRQyWr9J5cEeuW3i+5JZ
	 yeH2tRJWgYJ9lcpdMM7ZAI0jkjl1QkWd35NdGw8SiXduJEbtfAKznePYLSfVR8d2K1
	 aanlS0gRPXVXKB9dtG4BMWfQvQWWEVYkSWm6/86Mf4pWcdhODEIHnlpCf2WTOFftjV
	 rjYHxxxBPF2mDR5A383+5sFuYm/aVDkUNpPg1IQJqriGn8+k8A00qmto+a8tqhTZaE
	 39q5HMJoMmcHKTOnLf3QSkIh52n/ZgtrB64jyV53zwt95PN48IV9ahRqLX1u4RXx7X
	 9+g54rIh3ZzCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7234C7EE25
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 02:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168627684574.25634.615561549875732866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 040fc6f7a0e028f7c75dc7e197399a5be6b249031e117d725f9635a3c09b841f
Date: Fri, 09 Jun 2023 02:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686276845
