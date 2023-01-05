Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E609A8494
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 13:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9221FC433D2
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 13:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672924287;
	bh=4PfnnMHO3Xk+Vrd5bDszr31le7gHdvwOs4rP6vIbO/M=;
	h=To:Subject:From:Date:From;
	b=BYB5bC7mJsPMhFMAwXuACg1sc597d9sxT68NPiFWu37toVQgyFOpuCnNsPjXsi7Ev
	 frmsHr0KcB0jQ+BJUR6G+2oC/Igf7l4Bey+Gq4tu2NKLFAR8qtzFQavv5c86zkTQJd
	 31nCcvqpVvYbZ0F2FJCgJiN7qqA4jNKCD1LxT3BMtrMBqB9Eu8jDlPwuqSxb+WJeG7
	 QkaIjkvoez24ifw4hdMApC/vkqObwFAUhjd7GIBRlEPegHac6kRGxpV43M9nneWP2p
	 YqrCcYqLxgj+Ud9WLQgpmnHRAoy3TwpfIQEjka2fVy3t8wUKFDJGbXVupoRudWQhQC
	 aLrIZGJK5iLeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76D87C53210
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 13:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167292428747.18553.1474908867704060581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1b5bdfac8a21c8d8f9b1a9adf2a8760c01dfb17dfee55e7e5bc91031d33c730
Date: Thu, 05 Jan 2023 13:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672924287
