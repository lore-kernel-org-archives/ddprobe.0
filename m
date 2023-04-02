Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 490A0442D
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 14:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E674EC433EF
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 14:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680446105;
	bh=U7N0I8YwxT025StxWEBppVb4Z5fdIOYXNvySdLFbMEE=;
	h=To:Subject:From:Date:From;
	b=o54qfLaA3/We6nAxQVhXZKRA/Jgtv7rAf3J9vYxSh8n3gqUBj8Y9S+i318ybHtXAX
	 1d4QKj1WzD5d2IpO5oC//TEoHS+MHFgoGiuMWFkceQZvgS+wI3h2skYfX0l0b0k0b0
	 L24VEOWH/V78iyNbfSfGW2SAzOovsylO1Xl3VbmVh05kxjl6V5wYJFNIXXBOgAFCiH
	 mxs5N+8UU8Q6aa8yMm7J1vaOeDukB5p5+NoZLY0K34uZIXXwwpomg2UulhK+kASSIX
	 zUve0pLYQ3pDN6pgFrv7xaN0Xw5C+PyR/GhtUlKSpJaDY1kXPlTzdINyj9e21NspqH
	 QtoNGVcb/gKpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDC53C76196
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 14:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168044610576.24982.9285732977734677054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcbe2bbf14d50661750268b2ff381e7abb7438458253ea86b83e7552e3b026e0
Date: Sun, 02 Apr 2023 14:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680446105
