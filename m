Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB3C47E
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 08:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 794B6C433C1
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665130853;
	bh=3W+6Rv+MI0l0iCxbWNQ5g4utmXSNhbkBoOUCwgHxTTI=;
	h=To:Subject:From:Date:From;
	b=Ira/ZmwPWfMTPVy4KuWHZ0PCzS4tUMhSFd3xwc5lb0jsSOg17MAxS4TGxsl97EHUj
	 i4f9eD0+FwhDrL5tkN8Dtqr9aHn5BruvRDLSYcEZBVCs7pKt9u/OoB0vhWjX3F/nUB
	 ZWzL5Zx0HtQlfVAelQusmD6hGuRLyKELNTgV5T3rOHaEE1XA0WXy41PP2njpkwtt+9
	 lmnUpvk2UB+HwbzfQU7HyBzmKE3pim4zE5XNIf+Q1RG1zGDarrjSE08fkLXzG3lTgG
	 jw/kEv/+JNbM3ZdI82nxEtFJpYPj9Ijo+AGa5QhcSKJiP0dXKac4dczvklEArqJLeJ
	 asr/6ZA4ZN25g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51262C433F5
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 08:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166513085332.12144.3338370337052630918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0260c4539e2ea819ac5b476d053e0f332ff5245a60a66984a61f0aaa24570f8b
Date: Fri, 07 Oct 2022 08:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665130853
