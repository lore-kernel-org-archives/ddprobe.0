Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF49564C
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 08:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7463EC433C1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 08:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669797054;
	bh=JU3Ts5yuTtfdbd/fGZF9qA4MepEmOxil3DFq+1rJTVQ=;
	h=To:Subject:From:Date:From;
	b=D6CCa7r7fu4w+cbWnklWkdEPaDyhift92pGZorWTUe+QDdqSsIEdjWacOaOzMbdt6
	 CGrJOUE+SbjjJwYXRLDMDuQIXnEAVf5w3RtAOzc+4LLCO9XwkNNq2EkVbegj6ZMNeW
	 fh7QBc84qRD7/CPF0D4WXWjzkftA7wwamSLnaqITX9wfQcprJ5LmlCNglwC8sQ1wdB
	 WiTcxQXluqMZm9CBEdsIlroTxn7sT01VpJ5NMjY6p49FIoV9PgGgSLN0C6S1hiOd1q
	 +L3PWeD+dTHpqnxi4zAcS2MU1EjNV37nDeyPc7hKZequT00gjwC8qUz31MrwrWhOqk
	 6wam99JJrDSzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56B37C4321E
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 08:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166979705434.28349.5537980932833262641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a22b0aff89c5b9ce3602cc5a3750746a645ae0b8ef21cdd17cea05fdc078962e
Date: Wed, 30 Nov 2022 08:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669797054
