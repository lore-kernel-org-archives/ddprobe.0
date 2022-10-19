Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3FDE1FA8
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 01:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66C63C433D6
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666142453;
	bh=RAirQ675QInR3okMvBYnc3OrB5Txe5/HUb/F/LTDSws=;
	h=To:Subject:From:Date:From;
	b=lvPebH44Oiv9q/+zGg82ednRXWp/pykhuvRWxJPEqSnWRsZhufkTaDc3ttKX94XnH
	 l81nm5cHIobfb7GvM9rTtuwpYEaroxazm5j140FipsF+fgJ4Zcemh1gcszmpDmzcmp
	 UGh7k6lUDve+cA/xbJWQXNCBXQt5AAHYS8wX7YO33PFfx+5issXX8EjQ+YZBBSg/Tz
	 /xJDh9xY39R+ixoN6jhYv25G9+pFwKPiXYjuWgIPVCLSMqg8xDHNUXv4mg+q59WECm
	 I82KO+Ut6BFufrJaiEpEN40fvailD74HFdrvvHDY4YKlnOXie7poo2+lfRtfwHtItp
	 3ZngfbsTHY3vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 503F7C4332F
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 01:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166614245332.11771.3450787187985426751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc6b81adec2522dfd48eaab54b963baea1f4bc38c991f40c2e2f0f9f2952edce
Date: Wed, 19 Oct 2022 01:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666142453
