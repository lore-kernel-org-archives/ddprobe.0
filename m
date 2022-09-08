Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B49907C
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 09:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F23FC433C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662627653;
	bh=Lw3ejryT8OgfCOHF0AOBhsTtGhDWm6kXg7HWIt5xKS8=;
	h=To:Subject:From:Date:From;
	b=IwJNGx56FoinrJvaz7kXLRIKKWZ6jJ2XrWyUBtJJZJecqWHW/N+LroYW43lb6Z4AW
	 hmOB1jfSlXDrLmmg2wXvmp4ibGcK0QCE1c4FY2EKQsf9zDWAQ6OGnWfdKIyreNuB+Q
	 G6RqJkpnODiAqjN4vFc6NEawdymGTMpmqoTLZ8gHC+0Ux2YvQoMBd8pB1H2jgCic9O
	 cNRbxl026w1iMgfd3aPtcoaKLvU8ui0vUfqzydrnMweMDDPSDmm9BWG+Af2+U1Do06
	 Hp9SgbMc5ovLhdefJsIISJSPoeuagWXiJgjKqtlmmQ9Fbb09KvTc+cmOfODvHJ8m+h
	 bSLt6TknNC0Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53443ECAAD5
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 09:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166262765333.18526.9138690746269475260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f78b29181c29b41c44d110cab36ffcf24724d8603d219b674ada8cc539b1443
Date: Thu, 08 Sep 2022 09:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662627653
