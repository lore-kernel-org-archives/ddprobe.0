Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C28C0372
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 04:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76C4FC433D7
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665031253;
	bh=Zl5KZonqjjDvcalx2sMMqQRhgFxIRPR1oPIQM5W1f6M=;
	h=To:Subject:From:Date:From;
	b=sLpjODnP4EbWNT2WO4t7ktSEyhYEf4FDcsL1zCkPms37ejuoN3sAVYGZaT3DEg4YI
	 F8jZNl8HMVuAeN16pTnT4hE54o7/uGz56lGI5UJ0dNafRUmQrD74O0ERcCUpnp6T+g
	 JGwplMcuTD6cGTsipGFkzAdP/wcXxwEFtYavxQSSSji7CKQxcS4Btbpj7KW4folRGp
	 dHmYWA8LxWdXiyWHoNbDyuboxGNenPU9rEux/44IWKJtiJ/GR0+o985edyl/tZTHJu
	 5VbKnbAZiZ8glhJJx2zVGqz2SKHijz5PK/Iwf3YS9mv0cnxabJHN0/cY3slaH2oxFQ
	 BMAGfZwCC4QnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59DF5C433F5
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 04:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166503125335.19956.9174080205139797571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32155a56bddd1111ad86f384a2c44f295f2758b44cc6dc5dc5081af83127b75c
Date: Thu, 06 Oct 2022 04:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665031253
