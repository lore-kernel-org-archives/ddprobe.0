Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D49C3FDB
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 08:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1092C433C8
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 08:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688804828;
	bh=nouqTUIoXs6eLq2kmFLd1TMESt0K+ccfVydpeCDxW+4=;
	h=To:Subject:From:Date:From;
	b=bl5+leKi9Qhnz97niqNwJj3KmYMBH1x7Nr9L0xBBch5eKPpW/QWE2Y19wUHvjI2ZA
	 upUaNsc4mVQrPFJEpTrkgyEiVW2VagqMNLzo6bWC4FDMO+TBa2d0yV0fJzP54cTTYe
	 l7+Blz4NU6D3arXKcfwXRqXRF32vBUJ5giZm8TMObscfWifJHSOdHninoiqc/IbTse
	 BsppbhiDl60K/PhvWE+hFIc7ya+n6ElceZwD3brMScOYLynrEcZFRJ73JDvVdhpFkS
	 TC5AlNDez5Q2efBsEqN84pvn3QgVXW7IFq8vF1O1NbZUIPZU1+k/rytU6iyUEaRRE+
	 87XBCbhOxbgLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5177EB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 08:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168880482870.26045.15946845101648492505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dab6aa32daee8534b83df4f3228f2270f75c5b99574e8bdceac09f601e8cd99
Date: Sat, 08 Jul 2023 08:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688804828
