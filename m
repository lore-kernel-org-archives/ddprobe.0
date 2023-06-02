Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AF7215BF
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 13:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9A0FC433D2
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 13:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685711825;
	bh=/QqTbU5ba/PZS3DN8VIsYGqwMVfd+ZKR9//xSjepS+k=;
	h=To:Subject:From:Date:From;
	b=QWdQ/WNnh2FVQ/TNGuLwMFezZkvQB/sK/asM3W3hi6t7tv2rdvE9XjX/lcGkX4Nkg
	 vddWDHSlLf15BrrchWfuLTGT178bDiwVG8qhJAd1Y8L692hY0hiS1+f9kBdppqdKjE
	 LZPZUlakWveITTSQHoFXjOTGiyZnUHf4d+ZjtZO1lcF5k1XIRRKMWRc8OOTCAOYavX
	 ivJsENfzREbrlxdGCEcdR4qv1tMmAbBYMvjcljghmr3+yFICmZYZY0mu+7sVWWh6PY
	 rFy5Eeg3optt3zB6fYmQl/dEJwgjg+4BJV9qWitsXfmOXS2Q2hV50d5uVsd5mK6G7d
	 6wcapqa3uNGqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B98F7C7EE24
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 13:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168571182575.12840.11398778410880618484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f56a110b7c01bc962cf51a6dc317bd8211990bf2d3c25e93eb2d2b3433afcdd6
Date: Fri, 02 Jun 2023 13:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685711825
