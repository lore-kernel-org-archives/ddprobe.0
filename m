Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD4B91FAF
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 22:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7571AC433D7
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663021853;
	bh=KYFK5hqrbhah9e+ZdCWG3T6EKQfmT6erPxXMuCfeOms=;
	h=To:Subject:From:Date:From;
	b=qy+QKJ44k+xrZaJqK6lzqULKJ+LZAzjDddeNxEFhgUOw15It1KtDRY2u3XtqB2oL3
	 ANOCje+pkfBT2TtRZ9wLrKXfUP+ltASEUzKxQqi6Qum70D7u/+qnM8/kCsZ2fSyTqU
	 eQRiU4P0vwzCADow4KLqy6uRtW4nQ7WLEbxmiDdeByFph6p0eNZqj5/3pS3Faw3bmO
	 +gatEEotWC7BgLAWbCGMc03gnM6UPoC041hIfrPyJqFuEdAZl/DEl4DdgErICRvJYA
	 87rvRKKv3YiGMyWVnJf7/GXNCS5WiCof+fRSLreNix3Ye5905iAjdKexrIfK2eWM+4
	 FtQwlvEen+Zzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B94FC6FA82
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 22:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166302185335.16218.13839513955783932543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddb30d567e8df49ad3aaff38879bbd587a73c824cbcb21503037bdd3a8db8279
Date: Mon, 12 Sep 2022 22:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663021853
