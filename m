Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4B6E3D6A
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 22:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AFE5C433D6
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664748053;
	bh=cBLE9ieZBms9aWE6WWv6AvktS8G4U1Bol5UiRqNUP8k=;
	h=To:Subject:From:Date:From;
	b=TobpB0GbC/ISdLH4jWoPoEcqNYjolYL3FgAa2EZqbbaU3G35cSCxylqKOPJZ+bBlg
	 jZP2a+ANXUL4Z5uDCpV5LYXBv4PCePQ41l4sI/FrowOpfCq0eTpM6MTfpXsu2fqIlb
	 HjurFZPcyQg1nzX2ya2kw3O96f35MQCkt2Rl13UUotGLVYpAZ2LXizIW/lmDS1R0RG
	 pxQhn+789zg7cd/vIBywVB9xabv0EhMxlxWxEkLz4l58T0kmwd21ztxvrqtOoOBwAi
	 EBV7XCUThDlG6gXeVzDeIGXcaHJK0nJHMsSJ1wvy18gbTRfvh4aXZAeFW6vkkCKhk5
	 euF4/YPXkA4vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50CD5C433FE
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 22:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166474805332.994.3105999095940347494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b9463d82d62eaec0306fbd317076355775cad6a292c37f382743070bb47662d
Date: Sun, 02 Oct 2022 22:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664748053
