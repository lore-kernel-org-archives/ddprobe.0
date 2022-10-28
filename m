Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFE5D1FAE
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 20:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72DE5C433D6
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 20:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666990254;
	bh=whZv0n06InDcRmQHndDNu8pLA5hddF6UEGKdEn7JW0U=;
	h=To:Subject:From:Date:From;
	b=KI8YdefTCgR/uxmopujJXD9XmP6nly30zznv5xQNZOxp4oF5fscSW6d8C148yEs3z
	 hjhcZFJ0tjNlynR9/DyGEKFQGSPwJ5AmLI9Hkp13AYyURtAxSMSNVf4qw3BioJm+35
	 1BGMIPZhP7mqWVCkT0VTkgMnZ+r8ljhf5yGNmrajfgCYKm6avdtvPMBSk28D4gWx76
	 X6m6pcteJBr69sQIYSlCKxsbFAAlMany6ABGskNPQkln4FeoWlyb1W2fe8XbcpJXIU
	 24v0ogSnPFutwQ36uqR07BaxbZlNKicf6KOEEfBL86daAy32xy+gZUZAIB5pO5PM6D
	 LhzJnZarsYJ5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56C00C38A02
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 20:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166699025434.4597.14742172416379851411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a67338d6b6cdc42a2f4922fd95e9c0d5b95915604037d5a8ae7c498df9db5979
Date: Fri, 28 Oct 2022 20:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666990254
