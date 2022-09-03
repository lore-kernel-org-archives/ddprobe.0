Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0EBA7B
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 08:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 746E3C433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 08:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662192053;
	bh=EFxX+Hlwq0DbxMGMTZUyux3BSPrs+Uk/oDUvdaLygz8=;
	h=To:Subject:From:Date:From;
	b=aC56ekLFv41zrEiIUuSyFM+vT6p8uueQE2eG29W/Guc4ICkbddxxKsbyQLK+CKTpw
	 CMtJew2+iSELu7PHIAG7a3jCuftFL1dibevWJBiA+eB/Xgnq4dTPcPd6kOlm45YVOc
	 tOL2kVxfh3Ju/P215nPta9tVneB/74MNYyl6ml287h0+v6s6OquA5PXAHBlBsKyPLt
	 Ba1xFCQ2IgHfVQcMEhHLrB8LWH1uF9TZ250dwZj0/c1gcZsCCS1cmM3uV6KcymcEdi
	 TZIReOVLQlq8Cd1FVFgqO/nvtFvkqKxy9nnlXcfkTpiU0JBWsjerio5WXWTQOIP+Dv
	 q//w0xfTjcnnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52272ECAAD4
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 08:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166219205332.8065.12241604612057010750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19004c1d43c5c7f6e384c4d3495238c3444be73e2d3c30cf3c4732740e260f4b
Date: Sat, 03 Sep 2022 08:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662192053
