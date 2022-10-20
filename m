Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B467F7E
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 09:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68631C433D6
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666259453;
	bh=0R2EwUjSXr0m3wOecPdJUoywrRyv90Nb2IVvFnbU8iI=;
	h=To:Subject:From:Date:From;
	b=U/+OMirGZpaRmTN+M/GU4QwXavEgBdUUsCkBswxsnPOx8tqzQoXmUWo2Qe+L2Qeah
	 xX/OIEeLAhjPs6STrOyw1f3voNGZUP4BGymUnkHnuFcgqvnssEXc32fLo7Y6g36CnU
	 LJuP4WMTO8dgF+hxxpIHDLUFzmJCoF1Z4kFqKKGr0ab++7TkIJqU/lRdMuixIE+ajk
	 X2b5Pm7HFDGazwrrztoFHsGiMtSEZZ58Scdyp9yYE7YxwTifYfQSCpaLdghqF9r4q3
	 8MvkN5WH7xi/SdYjlC0XsvBwx2NWSCvXtj8WhrDso0+yt5qljbOGoCi+Ve2v7tdYMn
	 9mFDkfift5MfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EC68C433FE
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 09:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166625945331.31245.15610289273416829440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 806438280beab077d09f566abfbf6975e9c3ee19925948f669dde64bfe12e856
Date: Thu, 20 Oct 2022 09:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666259453
