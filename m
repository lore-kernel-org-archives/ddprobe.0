Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D742F5CBC
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 21:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72211C433D6
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 21:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663364453;
	bh=mjrBp0WRSFzgpMoqpytWTBmk7KSBmkamis0NzTWW4/U=;
	h=To:Subject:From:Date:From;
	b=PWYaWHU8Fs3YOu+O2zBczXAlg/o8Scx7FfVImzYJ3X/kl2fhQhkUhEc8H8FN6OTiH
	 AHiyTSaLQ/dsi4zO/WXBYU5fwF2ddl0ifxJQXdl1xgNBiLjuRVhsvK2neYtfycChpN
	 OcMBeTVPfCP1ZYbssSWUmB2Fg/3u43LgB9TMps2v8dwjG+cusTfYOSfd+pm/xCenSG
	 l6jTDBF9sEbvsV2NK8yP/lLEXAx3kDphkrOLWpfyvDDNSjFqdEI0/GXacpu6OLZewq
	 42fvYOnEE11almlYsFiAmodVeW5vH9b9l6H5ubT7zU9dvUmVaWalagCD8Czp0OBiXd
	 neBlBBFFY7JtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56DD8ECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 21:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166336445334.9406.17928849453499721091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80071d04743eb73e763ff1b9e2e47558dabc4474b9b5c8664b4900a8ab203f37
Date: Fri, 16 Sep 2022 21:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663364453
