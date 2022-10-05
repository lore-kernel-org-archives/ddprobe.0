Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D998736E
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 06:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FA6EC433D6
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664952653;
	bh=ehY23aUaV3YROpAp/k3Op9ZdPAec4M3dkPOoQyftiNY=;
	h=To:Subject:From:Date:From;
	b=dxwyYdpSvQAFIhhlaUlEp6TWL23+v3Hq7e1/d1dNalqC5pLRhiu08H7Jf5YgeOKEU
	 aaPPWz/h8qQb+2xWgqXa62TXJb0HlVN8ikYOrNWLBauv558T7G0heUdw9Bc0ezSlQS
	 Rjb9V26h6mtR46zcximdQlrDEBAb20Zeq5TQBj49rQjgw0t7O/Dy+Eh6t2HMo+PLZc
	 xZBDV9thI+rKJy9X5LtFhJ3ccEFxRlJ25UZlxRsNPuyx7EdfP8TeShhLuW5WwHiFRX
	 I3JRia4qHpqK2QS0lJBTLR+b/IG2n5D+cYJgoC4B619sI/WBsxGrDciFS2i4vKIjOh
	 1qaMPjAIAAeow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 545AEC433FE
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 06:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166495265332.4363.1500376131748216792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05b53b25caf4043df66000bf5741359579edc0791590baf9dd7a0816933bf0fd
Date: Wed, 05 Oct 2022 06:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664952653
