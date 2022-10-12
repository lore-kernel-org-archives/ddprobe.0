Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D08E117ED
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 15:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C76ACC433D6
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 15:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665588053;
	bh=DZCA7TV84Un7sRRf9qGgm4UvCanBUCABDqO5m26QCnY=;
	h=To:Subject:From:Date:From;
	b=B5YxPxHZhq6hAgKmVGjWq0aiaoQZ5VWYJuwgWBbG6jphjVRb3s4SRfIKGWt+zQg/5
	 Q6AI9JIrPSc26DT6nrztlpquAcHabogYNR/hADr0niSCPPt/Dgrntxk8hh5JKKa9Q0
	 3fklYgYS1uAFxH98WOkUc8/X5deq8mMplC6TwCHueqbL7QG4ZXXTCDMxHCE6QOK3q7
	 SOHCZyRvz8a/lE/JXXD4zpxKrwzPPZ9qs1yPQ8GqdA4C9Ds/2EdjYGssIdg8t043Sf
	 kZYSc/VoawbofQO5UrNXD546MCqbp0ihNxezP+CZeMpApdm1b+GRrt7MrX/b9Za1Mv
	 s35vsGOtOyfGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 523DAC433FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 15:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166558805332.23894.6037040669805400566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 464132847529ad36f01958933b3dd29e96b6ea607af4023b3c0dd51f18222d74
Date: Wed, 12 Oct 2022 15:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665588053
