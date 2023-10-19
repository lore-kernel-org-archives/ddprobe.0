Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7874532C7E
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 17:48:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E4HdH8jl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3C6FC433C7
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 17:48:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697737692;
	bh=w19zajGkGvmznKRtIhm2UX/6yT7R73FRojd3UcxgM3I=;
	h=To:Subject:From:Date:From;
	b=E4HdH8jlr0UCo8jVOcaidAq4aCtK3I++MzkiFyWwC5dKltDePlv8WXDVZGC+EZmRr
	 QQOdB6Z+k7ACqK6UHKJMwapwSwazpqc2RiE3JQl2EM/4eiESdiAWEQbkUBUnoQQ6Xp
	 gVvPkudZiDmnp+xHWYCbjXxVavb1ggqyAs0qVKwR+RiuJCR7gVbuK4m0shC8y0Pv/l
	 yLP/iIBLsTCnNvW6UqWBeESmV1n9qBtme8bayw9ricHgE3BJIZlkAz3XLmgc+e0u+7
	 +hi/E1vhuBJupWidoV+NR4YkEoNOroUdiR+Xu4lYmmAdXC0TrsH+p6UEzEDwzg1+Fw
	 SMBoqANCjyr1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7F22CDB482
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 17:48:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169773769280.11293.10761738808899986572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fe234f438cef9435e5f4b36e2cc3229631f9cc2d6b389a12a7863102f1452ac
Date: Thu, 19 Oct 2023 17:48:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697737692
