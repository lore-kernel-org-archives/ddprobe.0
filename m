Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B67983217
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 14:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ED47C433C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 14:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670509254;
	bh=4N6wJ7vl3f2xWy9i6zGNsgaTovZ6IUz9xqCzmXFSgew=;
	h=To:Subject:From:Date:From;
	b=U10tJS3Nq7RDbTEnD985IShrbs/4q8zGA6or4ACwNFQrmodgn3CJnFgFiZoKJ6J+E
	 z/1xm7L72otMHQ2Is0BMDlenmh+sGqYTd0C4ceujlpygmpsB20bFWRIXk4UyzPBlUz
	 cx0sAu3A5/1hMeCC4/Ec5hT/fiCMcd1/UkAZX2WRu5y35ZThtiv23qgmY0SM0iDVzt
	 bc3rsxt+l/aI/lphM+VjCUSEez4q0OD6cFdqYgqeYSyYN2OkawXr4qt9fFXKXJsPo9
	 u7rlXtrgOwRZQX4moV8OgO9YKJyDQPRp0RXnELW7fI/cVvj/hUyY5Jbj5h41MmKxZP
	 CJlAgvoi8Vtqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53909C3A5A7
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 14:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167050925433.9410.12203325023377581514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07e36d5fb6d656528713d5b2a31302628fd6cae051964286118fba98cbf2c057
Date: Thu, 08 Dec 2022 14:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670509254
