Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55A777E
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 23:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 10803C433D2
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 23:07:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677971226;
	bh=2an+ssGiRGOALpfiSsb/4UiHMl+r1SPhneQioyWou38=;
	h=To:Subject:From:Date:From;
	b=QlG7OcP5DPSQaMLjU0pGRhTjoLSt7hGdEvIAG9IeBN4Ra5ickudQLpcJUiNgveMcp
	 Gua9VPTAI4bO9KFQrLGwZoVFFJFMr87BmlvIoHp3BJ0kmd6Eh2myWwuz6acyHuRuEf
	 F1CZlOnZMnDG7BlYNnF+T8LYXN4on4qBLlqwMnBMKHFW283NXUNFo9KEruPdfY1dRa
	 cWVosGhCtw+CCdAzY0y7OgY4EEDbRlOV0lrmIorqisJNYnqGo1Max12PwtO9EmIi9M
	 iQiRKFSvtdBqA843AknpXSGqiJTsvIxEs8PXoJyuJV7dU2oHhYd6HCy4XNFdIHej05
	 mVid/sCD9YeOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF6A5C678D5
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 23:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167797122586.29605.5177454344256491716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bde66b12c04e052a853de53e670ad76c074652ce6a5a9b383d983cd53deb5b48
Date: Sat, 04 Mar 2023 23:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677971225
