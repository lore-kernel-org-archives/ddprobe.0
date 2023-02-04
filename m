Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 454F61867
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 05:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA2F4C433EF
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 05:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675487765;
	bh=M1TudAc9+9t5o9DpewlG+NG+wBpxlSZEYZUw9j4kCBA=;
	h=To:Subject:From:Date:From;
	b=OEM6qogN2LlTPYUWRTa+S7/+MOgfqPi6I2KOfgU6DY7csEdEZq3pOm/1ldeAAoD51
	 J5KrNQf1N7ryjn7xfzp0cxpQbTVJ/866V4Gkmi6AKzcD38hbAT89oRuP/S5ecyooZx
	 wa9u+JIwgYV89wuPTlMnrJx24IjnWn0ZEIi0oxeuSMm8ZrP6pfcJhmCf5Fq1RmlzCD
	 QK2PuO/mFmgmsjK3OBM3DKWTbglPkH45ClXEQz0kqn+m3AkTNzJZxsc4O4V9re8tIW
	 snmXm/XJR9ppFl95uaNZvCRAmeTr9JFg859R1bauQdshES/9OV74neI7thNfJv3Y2Z
	 1Uyf228rJ3EBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE2CDC636CD
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 05:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167548776574.4158.1140125379068103212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f4cbd1d7762b0b5bee565871ed2f404f6f818cfed199302b7eb342c97c4ebba
Date: Sat, 04 Feb 2023 05:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675487765
