Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B56497E1
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 06:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67A7BC433C1
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 06:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664346653;
	bh=bL9O2BEDLfdCo3mAl32FJqWDStjdz9jNvdFiPPqPjnI=;
	h=To:Subject:From:Date:From;
	b=YpI1kXA/b7QO44+CkZMFWXJznDssTA1Ggk2vlrAT3/4h4tU9vL4Ppys2QI2+nDDFq
	 2Zt2bLPaB1TEvO+UsH2Siz9L1z6aVDgt4cWPrn6ltZQPhkOgE+2w9DhSVSVCo/x2fX
	 18oSJ3C67V1bUQhTVJ1uDO0ZklIbAIqMdCx3gc/SnGykqmAjggb3cgAWCcOro2+qiu
	 PjM+zVikWUFXtlHc9W2j8mUGYK7cSobzphr51s77nCpqMLqNbfhlEbtNh4fBzJUzQo
	 pDYuYMAkGd8jkGdPOU14ZlJqnac3a0yQDN0Z3quKGHSJvnoRPP/yWHgi2L37jKSKga
	 1rshDkcAAGB+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E5ECC04A95
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 06:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166434665331.18397.15369922122530914462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78d9fef7837159b3b7584210783df5737272b9dbdd0ef71f787575dbd10a1ac6
Date: Wed, 28 Sep 2022 06:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664346653
