Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F33743C30
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 22:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FF6BC433EF
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 22:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672526487;
	bh=UmoQ1lKlCReN7FZ34v7Sf0tq1vhtsRIpXRa2tXySyzg=;
	h=To:Subject:From:Date:From;
	b=THYvAmx6lz31qutQawvsSecQ9h7SRRdLqfTKlOkIuSRNax9+sIeUfMZpoYR0Zu9SC
	 agFeH9zWL6V4L4JNUeF3nthKobf1DAdyNrR2shJHNyOnPWDB3APQr+/Vd6y0TqY9JE
	 LCApTRfHf3y8SZpJmaxxu+HAXvHRUZQeSyHcn9SkoKgFY+YVnrfF7nfIvVW+iaUedT
	 4KTpk/aFHgZ5sbv8wURNFIe4ntD3oAuSurpuWh1CqsELKF4mVjldynu8HMAnVxSLBA
	 cjAbddCZJ83svvHygHE2OThmkF6/RBfKsnXELuHacm5B8iOkISOpSvNQLRxKZLsJma
	 VVBWSCVRKIyOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B05EC4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 22:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167252648740.30672.16034917825038517346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad01ab4690b437df7703f7623bec268796a75364b9583c9971ced08a03fb7eca
Date: Sat, 31 Dec 2022 22:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672526487
