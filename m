Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBBA07B
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 02:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AA26C433B5
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666058453;
	bh=sunF3+PY/g4SnVlaixtfD7kqMoOPLg0YZmtahCBFJTo=;
	h=To:Subject:From:Date:From;
	b=aTRypjBYus6DfC5e6OUbpNPvHU/UPFzEkUBrciYs0Yvk6yP8byNUJYOQpvAmFkEnD
	 ZykvIQrIPrt/scSBKSaAnewGo11gu+752rjSRGEqSgFf61PGIEfDWSkdlg4+k8gSiY
	 SXNj/1MG49eVCLktEoktGCz+L37QshXx3Yv6IJTam3EcGIlspEiNYIMYKLfQtlf9xG
	 NH28j7gBjRg0BKVMlty1B08yuTkh/U64ylFpNJHqETrbwOWcaRplNPvLgeRf+qD5NB
	 wqMC4EFOGvucXRIRdiYcJwv3MlzzcoCPY/hRVnURGI3A2mnEnuhSdXmVTe/i99vhkq
	 gVfN71xTTGXiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64BC9C4332F
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 02:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166605845340.4490.2966075648257923552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e9f2a7fa38d632d642146373ecc9cd16740a5af0061c211a151590faceecd64
Date: Tue, 18 Oct 2022 02:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666058453
