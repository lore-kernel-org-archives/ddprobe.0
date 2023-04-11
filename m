Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB2817C3
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 01:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC2C6C433D2
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 01:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681177326;
	bh=ccUZJbHI0jRaykWmH+CFje4FOLGd1Tf08rkFf4gX2Cs=;
	h=To:Subject:From:Date:From;
	b=oeKM4T7Gx/cmLsYientwQA0lEp6vmFXvaqn9et+SvZ2/ekBWT4hVyTNEJOeNoUK7u
	 JLAnVft4rUuS0YyiNSn3Kh5wCFxk1awVX+BauZZ2kq/M4r0FtfSvk5IedUyzLL70P/
	 csDd1vUoeju5TxFO6sXeJgOAwSMFC+ZtJlBpT2S4sksO02btBjqAhONRYA8E9BWMI7
	 FtYFMwmP22Zc6dF0PM8t98w5a0oc1qyg6PogYPie7akDp/wFLoXzG3V47k3SwtjmC5
	 KTjJXhj0b01RSd1AZzBBzF38Edr101slA9ATfXD9F7QXpgYQOZ+uHO1M9BFhooGe6X
	 hjg1zngos/+5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEF2CC76196
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 01:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168117732583.7297.8931187531536715599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 438a7067a78b66037ce731ad4d9d2c671a39a48f9da1ed702580eec04c6ceac2
Date: Tue, 11 Apr 2023 01:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681177325
