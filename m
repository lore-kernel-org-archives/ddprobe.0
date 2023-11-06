Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14B61621
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 14:58:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IoUYTHtg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D0F4C433C7
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 14:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699282697;
	bh=L/xLgpxrYT3uUb1HDMioMLUYrKldJZW/LgfJbly+fm0=;
	h=To:Subject:From:Date:From;
	b=IoUYTHtgtkojT+Ds8dXTqZcfT/6a25eU/knrh4Cl2AzprKv8JZSwfHXuzoFJVKNMk
	 7GPOgg+ZaiCOR9trUUG9mU/DtWJxDZPf1gmmUr8pnVwxectQxmVIwXJQlvJYsuh1cQ
	 VGsOxFGWggeAOXwIpksfynkztFFYp5Q4HhnRKuDsgWHyeEltS5V1DBgbVPaiFv+yxS
	 glfv7o4b9ol7kLZRWWgjFORj33FPD90mBn2wI5rTmkLuuM8WxO1kRomv2MTHrVyWRO
	 nT1OWm1MMbaxcNwWAawkcVMJhh2Fgp2WGBEw6/5rQWrJtRUQxN56x00swZ0SkaWFmV
	 bRvfnTLZbPotA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C41FC4332F
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 14:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169928269642.15220.17391127001899930397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c45415eb2f49721fdd0506ad8612e4dbad54b1a45b4fc855bcf1c14770d39f69
Date: Mon, 06 Nov 2023 14:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699282696
