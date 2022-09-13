Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C384429A9
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 16:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74091C433D7
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663086653;
	bh=qMGSbm2end3iKJDcVoGvAh7VnZRVBZK+xkUk0HwA0cg=;
	h=To:Subject:From:Date:From;
	b=StUNhCf11DVTPTTNPrOALUNQHpdKlK/5lYlM54+ZCJpw4SGCZp9UQqEqC31/FZv2T
	 8sdKP/DPmDU8CLfwnZ/u/J946/C94fCHr/QSGbTmq6ddomZlbgBxAsm3SCmcjmvXUt
	 sCvC88SqpzRraWal5NoiU4qQZVqDceeUC6sFXMA/i9mcpsm0MmCbDzWf7CwhrOVP//
	 aq6/JAfdQOABSKEUC+fW8ZW8B2lJXaSN9n84G/S15aMKDYrDVX7VoV5ZR4rwo0kmIx
	 OtwoG4BsSyx850bChJ4MAtTVX9yhLaMwpiOqwUX8/BVJraBX+xAzOoyEW/kj60RxsC
	 0nS0Xw6Q60M5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57771ECAAD8
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 16:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166308665335.23016.14322209529126431150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c0a5eed037d65212dd4fe693c0cfa6a0092d77bca0a9d9e48a0e25ad5d83369
Date: Tue, 13 Sep 2022 16:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663086653
