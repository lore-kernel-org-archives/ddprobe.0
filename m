Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 053F948CF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 11:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bouJo5kB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7967EC433CA
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 11:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700567896;
	bh=K7joIMbDyABsfIDtTEuSumcg1s2ex0k7NI/okSoPHsg=;
	h=To:Subject:From:Date:From;
	b=bouJo5kBluhAx9j1S5SAq4gdUAlw8r0zjZqdW+SFm9jYP/G3dTOOHKZeS5WLnJwO3
	 BEBz0EzZiP9YsjcOt/4UlUVrbL7Rc7tXZ7+aB5oGiSPiRBmUnhKp9uKGWKbQHltBr/
	 CblsrMnttEC3JxZ1Q3NoKpbVZ7xgkTVRbMJR9uFJRIoNI0DDdUTedhkATFh0aY1L2u
	 bcdRuaQpm21McVcpdUANXbLij/5mQCYrFbYi907qOhpDRYyeYdiBbtEwvbZNRw9Nok
	 tUFofEOCOw2JScidAvFoCDJuaRviQbyxEPbJZ3cqm52A8MyQFYutA45TWda/fcVI8y
	 AQX20BJoYF1IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F24FC61D92
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 11:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170056789638.25383.9910064621211412171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d534c4bb8144e465fec9c4157b75acafd3bd24abcc3e5cc936b29f21d9a464e
Date: Tue, 21 Nov 2023 11:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700567896
