Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEE4833E6
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 09:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C13DC433F0
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 09:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671011487;
	bh=14BZxTvXj4BbsSh58rVkvwfYf/RkwCMvzY0awSCtPgs=;
	h=To:Subject:From:Date:From;
	b=eltcMFvzU9ox1V2MHokorKikNIQbOTkaucdmRS1mLDkaH7fJF1U9+fyR61m1obeCO
	 OvnKDwKadZCWIICuQG6orsvm+CbBz0yomFmmguAFXc+uFj8+g/9L4HuasHn7V760jU
	 lZRfG1mEbQZM4sgIoiZjRzYVrjAx/RyAqbkLX4zVJPmfUKxowKmVVXjQP++NHI2g7c
	 FuIBqSBVsj8ECojLDKkMjFKeDUFW5k1/CPAuFDkvsS2nsqSl30BLH5nu3LSSoT7B9s
	 /1PJBvXrBXceoDntleNVQ/2lfEKPRd24/7FFmFpMgbYVuyyvX6iqaTADemnGbFncKv
	 cjQSKrY8nJCGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62A79C001B2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 09:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167101148739.19449.1487910394462273271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c429fc9604fba5296a239ac555f8c5acd60c06ef2d5f42abebc8239a1b479b26
Date: Wed, 14 Dec 2022 09:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671011487
