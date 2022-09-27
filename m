Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B66697B
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 02:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70F9AC433C1
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664245253;
	bh=d0f2nQX1GygZYCBa7QobgyWjQt8Bqi8hMjELDkCsIZ8=;
	h=To:Subject:From:Date:From;
	b=TPAhJfCfRLsKPfKJTLtMiIwjDnV9JOeSITlZhs01BISYVXkT5Z7P3G4Uf6tk7ePyM
	 +xrYyiwmHFxPE6k+5Kt4eqJmdjgsRf6YatbeBUuq05ik5OOXiDtk1ZPAzVrlKWgnfr
	 Db3Mc1V3pBZiPM/Ufo8dZRI9BdD8r6uwXCgnkvEoSM0mo6hGNG+1lt/W9lIwFHqAa3
	 XtmYb7pW0SoGJfLs1NagT5a1vhsusOo225flSKSKHCUR15lTr46TLGvFWbxSa54mnx
	 r829F9qj5y4oQwCTMPmsX7Jp7+LGGVbvoganIA+QvXxNH8YwFSpfZ4gvLFJvDtBUfp
	 jhvDfRF0GYmMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54698C32771
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 02:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166424525333.10058.11847473998909678862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99d9c9cd1d2f9aece2ca2322a8a6cc519bb68cd6f6b65e148dbfe0bba12b213d
Date: Tue, 27 Sep 2022 02:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664245253
