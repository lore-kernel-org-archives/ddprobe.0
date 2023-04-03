Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52F458F6E
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 19:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02048C433D2
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 19:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680551226;
	bh=UyJ2mpqhLaWqEwQwNfWtVaD6Ep154CvMKJ6dXofBR/E=;
	h=To:Subject:From:Date:From;
	b=FDcnbMp+8ZrKdEgRC/jFjzqTYAwspYdtHOTyZrTxaDune1yxZ0lGkf/Gc+2FAKPGB
	 6WZd4dmi3JUtOhKrXGd1t8srBZGrJZ1ArFa/HzNWWQFepHVkTrWHE2blkHqGicPBO/
	 uPSoTQnX93JynvjXQ8gOlGJdrv3U47TAQGOH3nij1QDyOUn6GVLEgYFPbRSxv0btW+
	 aXzGqjk/+t6c4o6dRgdOwkAhzarp72pxMhaz2kM98ULSHLMsmtgrlxt2IsgFj558kE
	 55em86ucJMTjq0F49xeK+FEU7Z7Km6lCuIhx+qNi0vGjMpduik5UI5ipRwGKlc9gbg
	 9SnwbVCbl3MUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0277C76188
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 19:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168055122584.32341.3595799557245076218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 505ec187cc9aae18e8b1237150e9661a9a6824f163ac2a4ebe943c947a07b54b
Date: Mon, 03 Apr 2023 19:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680551225
