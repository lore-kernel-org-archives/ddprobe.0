Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB77C7C
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 00:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 704E6C433D6
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 00:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668384654;
	bh=x0ypXzvJN3GAx1+MTLnIPuuCP4ykAW7kjuj6pabA2lo=;
	h=To:Subject:From:Date:From;
	b=pTIbFnJpVAJkT9uiAWk0f/WVEY9XVuMD7L/AruCZAPYy7xGxzwSdHJ8OPcPtuAWvS
	 nBUFBIT/knw7bbOoudlWRyHapjiMPGiGOYEalTnA7hF0rME934buSGAoVO9NS+fD9a
	 0wEj6wluUXM1Tj10MQSrB6+Jew9QLEIjCZKd6QuyrmxoZWG7FttFxliRHoC4tiDRyk
	 IFAyEWgieBUn9eu18xh4fEKh2T0p2Z8xpXwp9p9X5JvBjcnehR0hjs3MuWuH3NjSyE
	 vBIuYy2BTfbnZ2TD6Cbwv9ZeGgMLRxq8/JcVFoPMJF9qB2Km+MUuVRK0d+1UsJT2mC
	 gLtWbT35v0aSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 547AEC433FE
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 00:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166838465433.14594.3391630243106005095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2ad469f0dcb98c7bf47a4906fed0ea632527b3741e3b047289481c77d08a675
Date: Mon, 14 Nov 2022 00:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668384654
