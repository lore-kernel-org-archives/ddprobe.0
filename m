Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04E32182DB
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 11:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MyOHHJv/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 832FDC433C8
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 11:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699268896;
	bh=A/XABpAzNM3rhGPMbv3h1E4KvxBiESexJiidyWeIkSs=;
	h=To:Subject:From:Date:From;
	b=MyOHHJv/Wc3pe3rQ6tPYrSE32A6+cHGTRgw6LzRKjU+WFyIZZiHg0EqFX2++xeYxU
	 Gn6fWD3DTKLMRydL5hGf5GwTa22uPM0S1U76l4Z/VXZmjz/i4glmUQf9M3iqOdB5Bd
	 emUn26mONlOH55bGYRSMiPSv7IvMAV+WZEqJLoNE3cnVkSnbI8QprGT6TnLlW4zVl5
	 A2SxvN6tkr4zdlFDREv9pP/U5TgA17SWXOqTvoV7Ti1+vZ/Ekn1wdZM0CWQnoeR4q9
	 iuP5m+D7o1kP7DdmxFZpMvaBdiWUG3Lm5XlJLTjw8vkLXmIjxixARt/F0B9jmzWgxF
	 +RUJQQ5V1JLwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 632C3C4332F
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 11:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169926889639.27488.18030704341655950826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d21202c0c6e89e9175e626f554e35874365c9a01dabe01ff1af70d50931e1a82
Date: Mon, 06 Nov 2023 11:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699268896
