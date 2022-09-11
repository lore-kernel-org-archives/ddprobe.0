Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B702A7F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 10:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 64805C433C1
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 10:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662892253;
	bh=Z1xDvIIds/1JstgmaWSkDYWD44RqkvBtTA7RkWmYavM=;
	h=To:Subject:From:Date:From;
	b=Zu5EHyz9JEbtoFuL9mPVXClqi/Gyrx1AP3gCVhNoHKwKW/mJpx6IjT4atjtdeogdJ
	 Ir+A8/A8vI9Nhr/TFfyRc7zM7YqUiBwjYaBvPTZcZKaUPLB4PJjUNzqf5oyzgTUh34
	 IirNHgWj3mWMFgPQ5TUq3aM7YEXb+X1ot2JPDqYrrRizzCk3FwdsQgrP9v4HqKEmLi
	 bJaoW7iP9pfOd92qHMZ3aPW9h1gkQ5qVijZnl5lCBMiA0rEo0SZiYHE2gDqgl52ZR5
	 zc3hABs1nFUssPmnDAohpmEeH5/erCwIjUXtJUbxEUvyaaR0kpam0F7D6LnE4sDdfC
	 uuzcIBMhNlaWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4ED7FECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 10:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166289225331.29777.17055226820203554797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8547bac53655aaca30ad4940345ead14101803415f9c7ffe37d1d8d8e939b1b8
Date: Sun, 11 Sep 2022 10:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662892253
