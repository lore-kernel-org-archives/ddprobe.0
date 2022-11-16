Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1318C43A
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 05:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C8D3C433C1
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 05:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668575454;
	bh=g4wmrmtNoecaH46RSxRToDo3Xm5Aqj2+6eVC+OTMg/Q=;
	h=To:Subject:From:Date:From;
	b=i1K0kxQf4/V4l5rN0/amSW4rcnTEfIesl5yd3Z8xcijHoRXzNTXX1FtwUPEaug7KR
	 pc/tY6UiXotyuwfJhq9FXGye+ngBPd+h2FCMUvNUbeAHyYvAY1NnSG9n80So17qjjh
	 oL1I9jEflIPpnawswEjiYPFuHlqcwMz9Maua7jctRKupiUWFNbvR5kdsIrdQD9uf7p
	 vFCqA46G8GGVTyZZIslPhWxIL3Eo0iA455jbFV9CNtyLInFCl4KHq0bHHaaz/7Grv/
	 spVDTeaAIhQqxFVYqLLioWxPYsok0K/aLgmpcVkQirLHBcQNqttULk/+uW+FuRv63D
	 EMm7hgxZxBwSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52A4AC4332F
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 05:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166857545433.12918.10565849351110489426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e51b1e6a212a4d78cc7c438293dd68aff6b106b6e1320b740027393694f47d6f
Date: Wed, 16 Nov 2022 05:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668575454
