Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE6584C71
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 20:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D23BC433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662409253;
	bh=aJfJsrGxMohvfzXlXN0TXOroY5HnQwmKLl+7dQBlWkk=;
	h=To:Subject:From:Date:From;
	b=cT5WyKUvBP4HWpCvgh4ZoH4pBmgz4ugrG4Uqxxhl9qjA+7I6jY5oxoLmXlUaE4RE3
	 sMPIxQ/5zLIu1R4RcZPh6cYAAuJrTbxxm0a7El+X5TRe7jAMAaJdGdwQgTpYKX430u
	 8SjP3w3xJR8aPb58Fs+0fAFSDV6hfTvDM7rsW8FWGefXbFCiwPVrRA+X8vkYYiE4P5
	 srSfs8VzXEJ6iD/e43yEy+/gEHt32EI1m0kB0R+8/xJgdKG/jVMnWp4ghVqJYPH4mu
	 CMTB2kMqWCKA6meXJpuMSG1Yw3QauyyfvfaFnlCJmm9feXEdIZMcdkRs5xA/RpDPtw
	 kKjl9OFVEn1cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5204DECAAD3
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 20:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166240925332.16121.4194774614571048566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bccd57b72cc154b9a4775a4845a2adf0b69152ac2a34c2ddb3b17daeb8f7c003
Date: Mon, 05 Sep 2022 20:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662409253
