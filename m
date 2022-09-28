Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5C4D7E
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 01:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78D91C433D6
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664328053;
	bh=1O8Pi2iQEz/ltNT2fB75BIk78yCTTEZi7J+mH4vC/Wg=;
	h=To:Subject:From:Date:From;
	b=B2Geq1BkZkEG0pQ7vHMjoo9cjIR0Eyhpq9Zvsv3iabSlWXD3gfBlzy0Tfmvr7c7iG
	 hr1Ev4duhKT/qOiI/9n/J3ilnrJP+dhGMezBq1Aq8GhsBwAaQ9sRoWnmGKnFpPwGGF
	 0uQ7tqa/krzcYiiQu8DeEZdWaHU4ikA0udYoZH5hXmYSKYz62OvoTp1JdOUcjXfxGW
	 U+DUbsY80KMMkkoZdlZoQut2q7thjyg2491sJju7dfCXHuAgQ1yg40nhtwkgPluHHZ
	 ubKy9Q4u4wqFj4+6q01CXuctM+oAPp1GChh//JyT9RZkqOeAudP5ihye/oX9ZHRSVh
	 O2I4T8smZTULg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 623AEC07E9D
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 01:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166432805337.23451.17330459586334014389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6645f6638721cbfb660eb768df8fbc30b502db8184ea19c57b1f625b264f8a89
Date: Wed, 28 Sep 2022 01:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664328053
