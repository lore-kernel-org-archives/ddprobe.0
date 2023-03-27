Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F24879DD
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 22:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBA69C433EF
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 22:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679955785;
	bh=fPcM/qEk93+PUply2o23gXq/cb27jJuJAGT/QwDKC1A=;
	h=To:Subject:From:Date:From;
	b=AiWcNhaV8gATFknI9PiYJZBR1kAtHpV0Rf5fv/BsZjtT7NHI6Ff/6JsLV60YOUnuD
	 WBYc3DpVST8yk65aHe2Xk5oRCXThGnSHJvU/SepNZsom83TFdP5ND5Xwl5gGkTEiq3
	 TroYZGmBAna6AkxKYYVfcD3U1qAfizNWhJSsIoC6tAIqEISuLwlp027A/Mdr/OlhVz
	 OmcppROaCZOto84mX0Ay+m+fBjxv6LwkNPQ8S/SRjKXcARCHn+5BGMsWe8pZkHOjqr
	 HVB0Ag2rAmc0u89vWxmz/JgLN4Of2DEe6NSpLyPV1oLQytzYsC5gqayS8oMc//zA6J
	 MS9fcW2UwIrZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3AA3C76195
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 22:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167995578573.16097.2787224254948639912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5e75806bf0bac7ac1355d2253e5769727faec84953682f89d5315a81a4ccec8
Date: Mon, 27 Mar 2023 22:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679955785
