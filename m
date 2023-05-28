Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41FCA7E
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 21:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDF82C433D2
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 21:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685309945;
	bh=Ka27AhuwsDzCLEj2WfcDkhBZU8//e2kEJDud0lm6PVM=;
	h=To:Subject:From:Date:From;
	b=gX364ftUYrC/sIUWJgqMas3LWZLekEiOdYTboWAYmNa+1ZjdGBQ+AhHY7OlQuWx0s
	 C0dJPsxpMrtGI2wkOqXGVkG17EOSJa3yzDyfLHbZZf0kxuXbmDR77mDjDsBhM1a/vf
	 hVteoW3tqdFtXAjm+IJ584z3dj7kiVZ/9wMFUXelZqV27R6g9LPKJcHd9zbdr9wdfF
	 ptibB95yIjSPAoH7d483QCA7AKDu0WyAcoRf+VzS6XA/vh8pp1xI+C0yQ8oTRmsFFj
	 9ABNLR8DTr/7bRJbQ49JOwTbRTYRlnMcH0SVypm8iSVLqW/797y1xad85KRIDlvzgx
	 Qi+kT9joYftaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C03CAC77B7E
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 21:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168530994573.9208.3951271800667090830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70e0fd852c30cf9da6c9d14c7422c3a8ffae51e440b9adea4fb86d40beb72547
Date: Sun, 28 May 2023 21:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685309945
