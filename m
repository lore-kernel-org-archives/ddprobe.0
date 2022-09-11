Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B60887F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 19:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6969DC433C1
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662925853;
	bh=IddFn2v/bquA6wBts2cLc1m1/NhD3LgreqKIm94p5fk=;
	h=To:Subject:From:Date:From;
	b=HQn7QWDARurd2sy01262J1a+iHTwWtUPJFepw/vG1uXE+OI//XuRUOIkI7Tgf694c
	 0GHnVGep+aAczOM2mOm3VwoV6Uw734yiVQnOtitUHIJXHNEDoFWvDYCcIsK0ln7Zci
	 36ahYoThT4Q7eZ0hORGrxuI/ogxmgukXIoex91QYc8Lr9ALsnvfBgVwyTXBDhAkf/P
	 IhvxWxCuYN6cRlBL6FgzHSIKC+2MSAsCemcJAhE9ClQ2wW0k5vcGVrtmdsGgP4Gf1/
	 +jBRm/riefdcTSRcS/UEFh2AERWAJNaqX8wEREo+e74lnq3T2odbxyx+agXPkc6raG
	 m6MHUvKzvDG7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E4FFC6FA83
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 19:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166292585331.25580.12342399484659208534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c92fa67bdd4f2d454b0dbd34d1115f85af0e7f0ee3b387674002ef038aaed93
Date: Sun, 11 Sep 2022 19:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662925853
