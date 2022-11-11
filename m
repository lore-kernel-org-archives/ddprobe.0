Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7D6D63D
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 05:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87160C433C1
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 05:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668145254;
	bh=qt+iWw8uDe33hpBYHeIdLUbYWCC1XP5fxAMBX9dP4Qk=;
	h=To:Subject:From:Date:From;
	b=WIz85VcJPDaUGF8hvjwwqShLMqWibDtcC7htNGt4CVWEwtrpLj2AR5LWVBox1nUE7
	 2R6Ly4RHFPhIVBEuOdsjmziBgTccj2/gyeFY31AFgei64sJk7ZfQ8PSQzk9ynISb4h
	 cHW0ejUf/4s5fjf+rxFv0Tz2ar/LYgQqBrzEsyjeDfKo6qh8/tgNDOsKFQHgDD4Ko0
	 X5/l1V0PWE0Vjh5AllgTTwvuMyFknNswnpj+g/OkAZz86DzFmEn460XOTLSSCl5CUe
	 RkrLJ1mVTWVV3iozn+ZjsUG5ygGOx0eghK3fXT8vpsYmELjaYH4As4r2Qem5XyErze
	 e1DtyxgV1fzgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66BEDC4332F
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 05:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166814525441.2727.17757023807266889896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd3c253a97ba81897f1255aac83af6c0e9554c9b19e8224cd9b7c357dec79065
Date: Fri, 11 Nov 2022 05:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668145254
