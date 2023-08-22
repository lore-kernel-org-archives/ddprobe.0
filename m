Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55CD4746B
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 07:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC5BAC433C8
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 07:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692690248;
	bh=PLa5xbFRzkYR1BbN/b7AOG/ktxep/0eO76wKD+KO5Po=;
	h=To:Subject:From:Date:From;
	b=mkf2mplgbFT4GgbXR7fYrbvzWGJchRbKNED8Hu+XKwjnFAROv/qbaHTZr2fcQ1pt4
	 hiT2RLKoi1on/a59u4GVWhcLajs0myXUZBU776biTwSa2IoL30bx8tgCfvRsK1DL2O
	 Wz2mpwaC8pihBihvN43+i2AnTdb8Bf5qgzXsTK2Cj82lrwBaQymf6hc6Y8Q8/vruvX
	 bcDlI7lnBRRq2J0bEL54N7mAbGZ4buxg1HaCD5iVlLY5x16jN+NvefNz5EAaanJoiH
	 spCB7NmnOfYsIgWeF/6ZCUMwO69j95MgnX4mEcMrJMJhDB0GED4ffx5eYtHlI9Nr/V
	 0ymQ44wDKlQZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE8EEE4993
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 07:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169269024869.22388.17188591786742875768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b1958f5c8d013e1a382810351f1d63fe0affb8343f4bcb8dae904531f980a59
Date: Tue, 22 Aug 2023 07:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692690248
