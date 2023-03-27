Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C51881E
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 09:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECD33C433D2
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 09:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679907786;
	bh=OwmFNpZ4LCA+dS6FaKeVyj38ZCTbBa2Jf5DUK0KRolk=;
	h=To:Subject:From:Date:From;
	b=WIny4pqUz/f2x7KhRqawmh5eHTKHUxDmr3VigWYNdrSuSCMQh5GyJXihSW/iNrccj
	 aOIHPCObPFm32q9V5y5RwaV71HtHa/F2rl64cmIPAUZAxb7KrMIDvtrD1L3BzQu/2M
	 N93inUz3tNCg7gNaS2po388qmxMyUFHlvN14uF/V9TZTXo3M/Ng7jezgtCp/eu3ZKd
	 /yX3RdgC34EREDfG22eflWhLcWmZ6cdm8Ob1yubYojf07z6qr4n7DAQZ7tsLTWWyyo
	 QJY8xtURk2gFKGIgCbVTYE3XNlb0zy+SR6YwLt1k+u6ds1yHos3bQQwnHcjqxiZeqQ
	 K4P00do8ZN1sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4D2BC76195
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 09:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167990778574.18089.13051844276944683683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ac03ab8ae82be0c4810e4e42f3f35ad4792f5c92daa4c06a82db8dea199b16f
Date: Mon, 27 Mar 2023 09:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679907785
