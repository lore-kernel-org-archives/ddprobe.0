Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71CC41ED52
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 10:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4AB5C433C8
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 10:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690281128;
	bh=9NOHqwGrppUxY3guLr0j0IKRpzMCD4mXTIA17fuIfjI=;
	h=To:Subject:From:Date:From;
	b=r5wWQoLmOJSvpzOfkunL5684GsVzG7xeTyVitjpD1SMcchow3t0P1n+uQ3JrFKvrC
	 rGRBwam482EN/aaOX0LEpXExxJmMZmqymUPZ7cxM1NmS8sQ38IY+szg2zarnUCxWB6
	 AWozbQr9RasNvU13k+Q8SFJ8ZEpCl4Copo8HjyoBx0gTBMrP+1dRw/65eImdWQrqir
	 ro/GocE178Jes4TwdrS4r+ssXr6rdHgg1zqe19C0Y1t3AyI1hKQ2P64Val3GllLIP4
	 Jzi+kGs5ahIgBKce3VRJwTkegCwB7bOAqFRAjK4by0nEmq0U0iVl0FsY7JM0yA2pmm
	 uT03zRY6y+Oig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B239EC001DF
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 10:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169028112872.32724.4361406118706623640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af5a6425a44c20fb2a06891a16bbbf24469a71da26fc7d2214f14faf907f0647
Date: Tue, 25 Jul 2023 10:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690281128
