Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB76CEC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 10:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A55AC433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 10:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670755287;
	bh=uRDyAq15QG9cFZVh4s39XvxrHI/mV+7bDBKD/CLdRz4=;
	h=To:Subject:From:Date:From;
	b=C1TJRaaVIDWo6liBjSQB4dtrtu1VuotJATsUrBSmAo2K9Ov8c0P1Et2hB8Voi3CFj
	 4lio9uBvnwg9zaStJtUEDpw4ni0KWQlDLkjxCvyB/QNhtwjYdkntGQjdWn8SouBufd
	 YZbor/YjvQM/IwdYz6op1/3u9IWvkezijoZKOfPv8IsPNNxU5nlVEKk4Sxg8Z7qNJy
	 OqErSq02fmpuqEqQpz2kX3Bk1bfwBilTpubE0WjnPfwp1smdP5xBtEWPm6Ednbl5vk
	 bY7xfO5JD06VE0TE01rrs/4HxpOO+wY1JMWwL97+a6oiuKH1i4WXB+ZfjPLvsUWeN/
	 h0WI+BnRy3rAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6050CC4167B
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 10:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167075528738.9258.15156077534634650092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f11e18502ae51164eee5220eb65bf3b9b4fd93ebf770bfc93c8970615df6846b
Date: Sun, 11 Dec 2022 10:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670755287
