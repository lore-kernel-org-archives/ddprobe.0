Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9325CBA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 15:53:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB54DC433EF
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 15:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674921185;
	bh=rqx7SL4r5C91MjNOA578fhgI9tYvbSb/pKyDDPykBv8=;
	h=To:Subject:From:Date:From;
	b=Y+ZuZq5YJ10FhsSJrkFzEZgWr9CjaIyuFLmzp5KeimKT4Hx3UJi/INMOl/FH5dWiZ
	 1+jlq5joaO175ljGwTDCCChsk6Kiw+ISOTqYEt9PJHdnNe8HjspUxfmhMSW9Pc1UmS
	 E6nmj6b+MMlYZIovq1/b+CfFgosOwQAJ4qwpMP711Vrg232A4O/9hYyaFvtdrLhdrL
	 AhKBeFKyu11L6qlYuZ1nf/Y6seu+0/+fHDxfbcoLGdXQEVJRHIjmkuWg1xm+G6A3iy
	 uIPT2lXVrHHL6B88iWgUeZaLgrWl+4Lrxk6l7nR0MOGaDmSQJmh58mtU4Hbrv3mScY
	 36iqAdI/g2L8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B274AC27C76
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 15:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167492118572.16578.4212541401380014386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20ad3ab35c7ff0be5873c3a9511aa2ebb80f3011dca78cbef77ad6a988fbaf74
Date: Sat, 28 Jan 2023 15:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674921185
