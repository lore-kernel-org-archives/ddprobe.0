Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DE7E79F1
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 08:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBAA1C433CB
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 08:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688631429;
	bh=739L/ufdM5PZkCXSVGotgekFwm1RBwEqdiqxB5v5dio=;
	h=To:Subject:From:Date:From;
	b=MlHB0zW30oy4f8XTgBpYgjMLRJDS5AAFLlyzoUV/36m/nxl9S/B5OANgc0/l00PRW
	 Km1prBdVkk1JQEDj3bL37UCIo0Su5NVXN3QcOt0dq72hO8r8HT3i7IjzXtUi+MZhP2
	 92W2Uk6PZ5n94fDHLxVDAQdJh2hPRAs+u2IFHMSVWuRZvOlnUMVWDApi2I+7MxNPYb
	 i+8X5GoP9nmyxVwL0CVk6cuUZjY7PI1fhI8M0oVoIuKLDwdBhosugNeiDsWPjEvn4D
	 sChTLav8e7Gf5KPPSTezyfXmA3FYiXx8k+mTNdkD9mlhjsRnWc/fPah4QCQmdlaNEQ
	 eaURGosirLyvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7CEEB64DC
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 08:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168863142869.20722.13102116106743492811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14006f3422822f155351a8afb7277cca6ca3292df7b9004a24c90b806ada96ae
Date: Thu, 06 Jul 2023 08:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688631428
