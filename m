Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A46D67C
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 08:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69400C433C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662625853;
	bh=SPtOgFbwYt++ZuH0EdbJbI1ijax0+TmIQ9JDm2cJJtw=;
	h=To:Subject:From:Date:From;
	b=h89oskXcr/+eqJbTICFr5y7c83YRPIsRGYeUMpyUW7P8vEiStFzIKJdp9rxAbcPOQ
	 +EU8YnF/h/SrcO2BRPQPOxWjqJUNjFKqtF172sIzUQ/N1KKO/sXcuy8s0BUfjRYVS5
	 aIcfkTpUUOTfcWq2Jy7/7n83KmOhTcYYxyyPy6UDqvmSdaGE0Qs20L+WmjorKW6h0s
	 jdyZVR5MV/wrefUCeXiCiaNu3LSQcJocwLSQPSurkYotJD/j7qoepawre5o27rcfms
	 U3WRCP53E+BX+zkp8sGnSdzvkAvetncGTKgE6quBGU7yMeztPr0INorIEav6K65U8+
	 qdII4ae00J/3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4ECD2C38145
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 08:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166262585331.14010.10298467569875106089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96b03a904c8e0544515ca54bc6ff712d466b72ac6ebe3704316b893ee16d7e1b
Date: Thu, 08 Sep 2022 08:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662625853
