Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0987A17C1
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 09:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N0o1xDi1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8375FC433C8
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703410696;
	bh=2/qHfFG5r1k0JC4aAeXrjPdI3Uiy3IvkXTpawRMGZjs=;
	h=To:Subject:From:Date:From;
	b=N0o1xDi1ddTCT3tkmPBDYk4goACfozB9w5rPtQ6QrGs5qtv3IrZORPo1cf7feh3g4
	 o1U//tuQnTZrFsX17UimaLaPxO/sdrqV2gixQjLw5yDVzPIrtFZRpdTGW9FDXy4I9k
	 AjMkw9bpwzmqBZJHpwtK7hbf2ZUC7obdQzdOlMecWp46zuQAny8je8eRI4mKjl5k8d
	 QTff2yvLm/MtDwhSrboRS7JD6vEwN+l9xlf9ZbjX5v9Id3mobLOp/9SbenUjcAF4cm
	 1MOjp9KqOfkZFFfwu6S6OvkxHbAQMjPDP7l/DyU9ON+q7OK2SM0f3I7jLxqAAuqZgh
	 fKnN5DuovdohQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A013C46CD2
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 09:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170341069641.6943.8920099101243875851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7d8b3eb653b9f1bbe4a3e9b274e5872964f4d9a1d1b8ce8a9535c422970d23b
Date: Sun, 24 Dec 2023 09:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703410696
