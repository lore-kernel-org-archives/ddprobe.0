Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 537EC33E6
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 18:30:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E79AAC433D2
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 18:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682965805;
	bh=KTROqLbLp2MJVeZb1w9fMH+s39c5dU5PSiJdUhtmxwo=;
	h=To:Subject:From:Date:From;
	b=BsD0H+KfeaZfJTkoPfJV3y0CfRSz1QWzvc68tEY/pPJn4SygogxMbQ/YtmPliIKxd
	 JaS6xZUG4G6q77Prp65m0BbkCvMTadtVieQtrKJ/MQOONaHp5FIqzPTCoXQq+CVkxk
	 9QbYyOjIq5IAaWjtkfbua1poadc7NFKtAqSv4kOePrhQfzV3yikhCpVoJc9afRR1iQ
	 cwIdqyB70xHJJrizcR29zM+SQPkrmA4HrG5VfRDKJP5IPxru+IQvUf0m8Yyn8Z9Ud6
	 BbXrEupUFkYxXj4X7q+iXg9b0cox1QgoUKA+pGd+9sOFyyzTTOpuUHk8/4fun1B0HW
	 kj3TDm/5Y8Xkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C532AC77B7C
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 18:30:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168296580577.12872.10616663207131053710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b72320e883ab0401932d04a0ec9b1b4f3b3fd3f0495b5d856c332d2254ead34
Date: Mon, 01 May 2023 18:30:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682965805
