Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A363273E9
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 15:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J+VHfdLd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B50C433C8
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 15:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696605428;
	bh=7LURdDxzfUoj7StavN1rSyGTDxAHPIDmltcTkdkcCyU=;
	h=To:Subject:From:Date:From;
	b=J+VHfdLd7nymu0zIIq2p4qxz88xv+jBQxxxGuP2uudZCWxNnd4+MLasgwwl4QEwHS
	 9sXhH6ydc6Amk7c+JyHr7DVOdNVE22NY1ztBAMSZWOIJb5AM1fsPDxhroAZWN6QBue
	 FU64hubYfFEnCxR807CwIx93P55Hwb1KEMReASD+zJV20Z4NHIL11iN4yQnRHLTx+5
	 lH6w8oDM7tp53BHyq50o2X+AbOztGgcjKoewLWfyjiNQsrSs6h4Iq1hoV8QsV9ueP6
	 S0csBHC94H1AGaZ9CJXciBjbVa7TuPmyEvALG+lLQeV7omwwxtXJPeeD9bl1MUvnhH
	 sZoKRPXCcJlaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B87A4E81E07
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 15:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169660542874.16009.16728351153613771215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11e246e9fbcd4864a0411fe63419dc4a16367b4917d320c949db0cdc198d364a
Date: Fri, 06 Oct 2023 15:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696605428
