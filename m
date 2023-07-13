Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FBE0100B8
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 12:49:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C94EAC433C7
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 12:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689252548;
	bh=i8oe7GLYwaQgGhqwQIqgWs/tGJwCx/uFxVqKgAUB4rc=;
	h=To:Subject:From:Date:From;
	b=Ajk0CFC4jouQahVFZ2gseMFy702F3rTiQyJSOpTlmJWXg97CsSmvkmn5oLnQhU9ME
	 IRBU/ydFwLyf7zCJdRyifJq/exnLVlMQgFb92WRysnEBlwN3+/68m/zUkGPPtpF2sB
	 cIrtGaePjO0ZOpucPkYqkJcxx8vaFQKVQQLCWLrRD/dbQlLisLoTaJd3HfZCIzazNj
	 IzLC7rDWRQlXcIoV2eu9jA1od7o5gxzYCslMwpMCeoq7VL+K3XnVZ+e6u17gEz3zCk
	 C6gWy+c/LM9sSs264sj6w+qJa268Kmmk8lpdP3NlkSzY5eeTcNpr4sj5jUTS7MLh6Z
	 BGdjsxSlsCm0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0504EB64DD
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 12:49:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168925254871.25725.9258146863267337638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7a57ec65538958e6d5ec5739beef4a781b8dc111329297dff2a2e1668f678b4
Date: Thu, 13 Jul 2023 12:49:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689252548
