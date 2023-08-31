Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FABBE57F
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 15:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D223DC433C8
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 15:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693496048;
	bh=PC2OirRxQDQVkSKhRVOB8gfw9FVPZ4V7Lb3wteWvxnc=;
	h=To:Subject:From:Date:From;
	b=l4KIcJ9aiKfsDB9AcJ0R3ZmL6EZw1DM56GmSQXaUObFW/LtSvpqOUsS5I3y/CtWO+
	 tx6/7B9L8twBDo3JrjUDWYMkFzCaQIMs4SI3ba30GwyOo6gUUn/sHunMI0qwbb4NLz
	 /0fURedsMiDDFBb80KNrxmPH8DfOWgKiugMgCin5kfp+SZF+h2f3JZftRbx3AwLYji
	 16dDZEY9OBOAeqfU36r8JUw/a8YWOT3yLqpyQp8aI3H/PeRd2zhAhyNbHamLCAJfpU
	 79gnbKnv0aAyjJV7uT/b52XwMatFOa0Du25Fdz0DcTOWvHuBVlTUZnEMLPV/fTpyEO
	 QXwt7Io8yeJRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0759C83F01
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 15:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169349604871.22571.7612479972322604005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 625cc659444561472e477f0ffaf9174ec60cea4de22b05a429a6d6705fb40cc9
Date: Thu, 31 Aug 2023 15:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693496048
