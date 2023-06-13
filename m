Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B588F196
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 00:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 36181C433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 00:35:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686616506;
	bh=4OnDVJQICw3OGm6eagBkWoiZ590G7Ql4BdiC2KOpO3w=;
	h=To:Subject:From:Date:From;
	b=B3//7njdvAbGoDrA+ZY4Sivvu4m2xiD5NrPhvXrvFcc/X4voHbiSQjukeDlpgLI+6
	 pTQClasQb+tECGWLgcd7dpLeXqDBrGKojbCamEGn+qd2d6thHoQCQYHuz6w0jftZ35
	 nDLvY//EqKfD/1UOmK8xOeNr0jwyD4Rg340sKXCNUBRCTpzcPnJl9rwaFFeaRGwtZ2
	 XKV+liIZbKhphXtAzZB5F3an59SzciIm2HCc6RbWvHh3hMunfYOhOaB4x1w9+jwoih
	 KLdVwmzF9W0s5Q+TE+ya7vrjIIpqjca7bkoViCoSPNiB2TpPOCBv9i2W77biBxNT/I
	 lFqaGOrF7pDHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F2812C7EE43
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 00:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168661650597.31454.12153181484263652956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9900e4edda7f2fe711a2fb1b6a1547821e6a0bb9468ceb91fd61633defb881a7
Date: Tue, 13 Jun 2023 00:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686616505
