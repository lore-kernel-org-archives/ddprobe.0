Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F398111D
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 19:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3320C433C8
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 19:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693163048;
	bh=bvkGTQSwYZ5MoJ26+nYyDWQLR7/ExyC8Wt6Ne55s6HI=;
	h=To:Subject:From:Date:From;
	b=ocu4S34tSWMYLKjOxba6/EAMFtLShs/041xRdH9R5jGzW+fC9Ww20/HkrsMdZg80t
	 vUcDp7n6uZQjFaj5LfmZfDFSiohVneU4dURAhSOJ+czKnHCA7HC11+1h/TVXm8wZ+h
	 CR/CQ2CUq6Da0/Xi2B6O5wcjoApnn2+XC8BP7tI+/1/rmL75FBRmBtSGCpUTXgXSdI
	 WlF6BjhS6aHGMrQg4mhWbMknAv7ISDXaQOLF6jQsB0lWFwtif91TO1+NQ689/NIVB6
	 9CnZ3dpf9Bpu3AqL0LjKV6HLv3lQnwq6k9GzEk8lkZaPdZjlEHXe+HcDhWBhtCU0sR
	 /XGNQCE11eUPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6147C83F01
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 19:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169316304870.3513.6920434407241664357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9350866c14d931d575d5ea9f04802a0d1fc0e35070574943c6354a1357469ce2
Date: Sun, 27 Aug 2023 19:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693163048
