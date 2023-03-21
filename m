Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F091FB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 07:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D35A1C433EF
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 07:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679382485;
	bh=JtBmLIO2uo8cpFGSfaQbW4oiNffdQgSnjiZFY2b09Tc=;
	h=To:Subject:From:Date:From;
	b=G2roLT9b0IHjKwDBbC8LKTauhCfMNZVOjdj4fS2QFNXPjz3Xk70BeBM/0UMU61z/J
	 QmRms4s02Q9N+G78DobLE9027bmUFDrWC5BZ1l0IcykTyuUbyscW2E9bARBVdeuGTd
	 XgWehprSBAOl7spIRJC4co4L4ovrCxyaPtquLrkJnUnLIapH6VzbSkiQDIzG7veeY3
	 MB0j0FfHuTMyds7eVxHZJXVNK4boG+PwNbwyqU1zDm3zASIfShD8a+BXZRzOOUI05A
	 tAnsdeICOfZyQlVlm8Z6zgRjRXq8pTV/rEGdBci1klV8S+kduu8epLSxzlLV+Kgefx
	 c20CDX3WdefJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7275C74A5B
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 07:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167938248574.12195.5956514257865764580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c94fb290ecdd6a99cdef17a0707cfa7dd7f6c24f7480f8dec5d4b865f155aa0a
Date: Tue, 21 Mar 2023 07:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679382485
