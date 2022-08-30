Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE3486131
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 23:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71CA0C433C1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 23:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661901053;
	bh=I12p4mK7sCHYCt3UvmD9oC/6d0LEGPPKZqZbNEerxV4=;
	h=To:Subject:From:Date:From;
	b=aBMXf3T8wjCaeLHmWM1D/g0FhWm66UNCr5laFNh7vrLqPWhLpfDpwmEW/lanIE++X
	 PMMnhcW93sNIAyLYdQ6VEXBmuxHQ9uGzdt9Dyw3Dqtxnkwr8wfi/ewdNchnhfEJJQB
	 9+A7ln2LwlXB0zVZ+PZcrumdv0BpqhnDrbSvMWRMSi2S2lW+meHpTeBNRiz6804JsT
	 r7XWbhFKXTY2JmIsJRKFPsUj5USzfy8VZxkoTaxzfHjPHP26q/svTsLvvhkojx9JbL
	 Mblev2tGDs39BfhIlLjldcLYrJTY6LkQu4oa28MteKzOPnkFt/1e/vtBN4hCnm2u5a
	 /KF0b0i7z74Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5908FECAAA1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 23:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166190105335.25613.7421219296932245720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 041c4f7d0a6474c5ca3d8730e7ee0745592489145ca6f28f1cbfec97fa4e4216
Date: Tue, 30 Aug 2022 23:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661901053
