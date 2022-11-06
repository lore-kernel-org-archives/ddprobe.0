Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B270523A9
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 09:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E3EDC433D7
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 09:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667728254;
	bh=GP/yQyE8Rkv1enSTOrBZ5NiWgFac8hDp6aweHCh4RRk=;
	h=To:Subject:From:Date:From;
	b=NcBpHOk8CojH9mAQOSsFvxhUom7xQ9G2bCy5GYSYWNWl6kjEZ+zc+76d10EJ/PEpT
	 5avv58ZidIg80WDMkUHrtyyvmlQ13Pu5n6PZUeMnpWP7iA39aAeQJGuhAJtH4Kh7tn
	 xU15J/KZNlFU33GJKMGHOdbfTqC0h2SSp2kkfBEizqSJkYBsIwtRdxTlY2s+NdCaL1
	 O7OD7mMU1L8C3EoGuv1zv5oFs8d5YBzFmqX33XcX9VY8UBesLwZsF5uOuVMkJds1GD
	 7iD7tzrNn1NB4jQXK0pHWCQLXgaVH3mtw6ceGWSWBX6Url7pbOcjCtLoN6Z8nVlDlP
	 MpHM0QqskBlew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51D89C433FE
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 09:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166772825432.30592.3131925943896355715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b2f9cd6e5ab1f16998b1d9af1b77dae76bfdc498a2fbbf8d1507afc20cfa187
Date: Sun, 06 Nov 2022 09:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667728254
