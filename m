Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83DC36AA3
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 11:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0259C433C0
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 11:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686742028;
	bh=XsamL/7BHkP5SGHfTgcP6+yVjqfIwTKEOG0MuQW73wg=;
	h=To:Subject:From:Date:From;
	b=CzuisRLqW9RJ8dDM0nCKzh/EvxgG7rSvrLk34+MKVp7h+C6p9HopLYW4p3g6+ZTFX
	 2Iy9qGfmM4cFtQH9mf4yVkAps+0F2veyWMB/BFvEYr9jlfu1qRmpjxu/Px9ZobjY61
	 Phn9EnQ0+RJFhQ1FAdc/qFxoVV8lxKOsCYcRDBGeHJqITevHannEzbZsacKg2e9f3j
	 RCJP4+HB+blZQeleWI02MnoVgm/2sXOFkwq/WYKdU6qFhLsfnpkPw/0AnsqAOzydvX
	 6UkFJgI7PlGcStQfacHKkuvi5FjX8F1rV6fYgxUt9dmxWvZQIXWGniwja7uPwRf1Ca
	 Y48CHzss7cy3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9A8AEB64D9
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 11:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168674202874.6677.10815719061845498114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1887ce9726e0249885dae5c8de4748eb9415b38461d61aba1238a32224f5ec7
Date: Wed, 14 Jun 2023 11:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686742028
