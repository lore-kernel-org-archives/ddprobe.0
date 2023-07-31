Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 653D4362
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 00:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE1CDC433C8
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 00:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690763528;
	bh=nqrsCg2a1h1uzRpe8akkBviOKYocfaLBIraC6RkBQbw=;
	h=To:Subject:From:Date:From;
	b=VdmMl+1+vdpTXpIW0dRAWIjn9Ngy+QR/eo52JEb0WKHDLQomuL4EIGHsLGcPd0aZY
	 aPqtpmftTvAzHiN4Uqa2xcG8isd2Q7wgFRETqxWRVpmRi9Dkyastb5h+IFomxFrDSR
	 5zeHi05rOgxD+gUYlgw1I8O9d6RN8Y8mlOa6GBjxW0V9KT1B2oAneZ/6gsGB48K+YX
	 OQsNhCVRr/jwoEhHCoAvKVVQVRYkTr2ZMrv9jo8c/b8IrhQSerDTfAPY1dE4S/utH6
	 4z1OloCFLyabsCMoub3CYWzgUZf5t4jb13R6y91IC/uJIDQ8TdW3HMEy8yXS+n9PBr
	 OiHGvjZnhSuXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9C25EB64DD
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 00:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169076352871.12831.3042646698474654655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47ac28771feb46e554b8ec67e622fe8362df8128fcfd165de6fd72eca0c7f179
Date: Mon, 31 Jul 2023 00:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690763528
