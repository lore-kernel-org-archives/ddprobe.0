Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 709F5136C
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 06:46:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6E3BC433C7
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 06:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688539568;
	bh=+uzvDJWrw8+16WQD+t4mrdCPgqFn/tETEQ7sN6NkM9Y=;
	h=To:Subject:From:Date:From;
	b=bcC/Ve0XFgccM4OIZ3gRQ8lkNtMxDcMV+Cwc+aYxkK8j5OD8yIJZpmGiqJ/ScDcaO
	 pDJHCyPk5FweyauW+PTVg0P2L+X1SbH8WmprClGVoAEn3ULGPoKUqHEMfcKESfr/Sz
	 5WlwsqB/KjWgIPePYho1uqTKxQB+TCax+7LhplQPjHfDt5AYPSfpL3lGNF5VITqYFC
	 oMYzoAzlP9eaermWWAXYjYo+RsosMjL5a4lQFr4FpElmJsm5WitWoax9qEsMCeHS7Z
	 Lrhk0F9SniuMlinWAteOMJnpcC1XYHQD3YOn4nWnw6nWFRtOsL+RVYu3JhmgvYYOwB
	 1Jaj2glurSRug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB682EB64DD
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 06:46:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168853956881.30986.1720411813805553905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d38b6bb43229f73a8f256c6c0fa568d8392677779b0fc7c8bea2fa0fa3ff7f3
Date: Wed, 05 Jul 2023 06:46:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688539568
