Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF66C3C32
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 16:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72C5DC433C1
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665506453;
	bh=POSDDxVT+P8y8gJnWhMsBoi/YfqcYWPJW/jZiIt6NAw=;
	h=To:Subject:From:Date:From;
	b=XSBFRvlxdU3tCWjHqAEP+0oFhXoGKsGyIqIj0MQfAc5B3e6v+RO92NqmbgRElSat7
	 2J6EzQr+fHYcE3M97njsFj3Bt0k1K3tjXmnXcqDut5juxHBNxWhe1xRne6bWfGtCYN
	 v2aB2WnebFjlf3zF0XUbD2SwYnvxRhE0DwFLiFa50Q56U78RaBs0mj65Yh5eWpJVJI
	 otxknbAvRb4Qt7ow2zqp+v3kERKcDZN3EkbPrbTjO6PvOoRyAgJCv9MV9AJcH5JuRN
	 QhIVPzd8bNRNe/98iVE+pgg9gcGx/sNIBE0qhVbqUpvPhTZAd83E6m8x3E1fDRV9NT
	 bbfmUq/CDlOdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5872DC433F5
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 16:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166550645335.25442.2739879517844653533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f48e76b6b347e31153faaba0019655ac733eaee0f6a23ae5b51b328e95877ee
Date: Tue, 11 Oct 2022 16:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665506453
