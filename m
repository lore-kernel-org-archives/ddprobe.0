Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5B0F7F6
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 11:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69620C433D7
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665056453;
	bh=+lx63sWwscAfaLgeJbGmv2H8ZR+ZZRlSNrsZrPf6TVM=;
	h=To:Subject:From:Date:From;
	b=sBpUwj8Yg8oGyxu6hHTdjqZq5uEZwHvw/+DPRCd+tZpq1SzcHLkuLjyTWsm0LDx9X
	 4tKFTIzrk3OK0KPht5fFg5e9zl2vOI/f7PACath6iIHbegY0kg0B3wX/yYGhl6jUOY
	 1ij1mnICxIHJ8TllzLAO5innbEbjl8knACo6QKj/lPkgi0sDB4yBNQsuHWVgjvNbyJ
	 pAoUHxGnCjYJ+yuSGI3SecHe+VTHt4z/7It+J+ZJyRGGBM5LC56SDOnYLEwoN5M5CS
	 e8I73YVM+SRlgJjeI3nXZQuOt6uM9vJ7dfXCWYTpNHbBiZxMnOcQIF7jOFyvvOIyb4
	 pdzDZ3I5UAfkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5273FC433F5
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 11:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166505645333.20062.14570412136153053098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f8c4de7c4efb1fdc5e856d68a28c93c147f0c0aa2a351e4c47f8d0f057d5b16
Date: Thu, 06 Oct 2022 11:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665056453
