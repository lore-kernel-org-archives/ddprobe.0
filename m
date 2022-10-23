Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C69B71362
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 16:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E395C433D6
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666543253;
	bh=uaQ9i0S2vEHPWSaEPgPDz5uU0GCF8quf/EJykAR2TGE=;
	h=To:Subject:From:Date:From;
	b=UwapnRZ5xfDciexeQIRT0JVy1Q5THHopmRnCXjH80JalLWs3QUl0+kdg3EXsXVkUi
	 ouwkwiWixtc7tb3l1FJW7QEzGTWdB+LMKVRW2/7XXd+pjnIVafU6XupQ1FR4PhSs+x
	 EkUakn5zzf+3mHwtMaLUijeDq+DUs9po6sX9XydBBJPLzpa3p08o3v8d/VXTlEnvRL
	 XqeXoNTjRPEkw+YSpuALzeQ2/RuwRw6W+mcIrGKM2rLs2pAh1Q5ZumhSJ72pUQ+7oS
	 HRSt9AKh6C7/Q8xdd+TBfCKJXwJ78ztR11fIS0+wKnViImqIms22AuvoD0pavHvt/G
	 vCL5V1hx7Za9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F4AEECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 16:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166654325331.8693.6152785627619385794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdaaf27688eeb25406ea9aacb0b0bca2205edb7019316c2250c1d23702076b02
Date: Sun, 23 Oct 2022 16:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666543253
