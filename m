Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D7A2107
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 07:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9085C433EF
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 07:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675928465;
	bh=+ZR21qqwrzu/fESe1HpNEEDosCLCfHDtKo6xrKio2yM=;
	h=To:Subject:From:Date:From;
	b=sUhUmb5mAdUZywmbPqmCBpbdw5iTgW8VeyG8evmslra5bB9sQfghAbrY97C+C6K7A
	 HxkD+uOieEJJ4bKAsFK5qLBp6iCbGbJuemAot4GllWIPoHIZEEoRJmcd6LkYWu9c3b
	 sfyksZ9kRzjHCMA9Nbs1nxqGG7dZnVm5opMa1meMbaceL65159mJhdEzZhqEFHlgSS
	 KDMWz2IWmzBABaiJt+34S3N3BIC+brhVNjuGFmqBjUCokthqDkHaIUg9Za4SFj+VkQ
	 vF+syv+cP6ZLv7Vp56KWr1tJdRU6/ijg48xF5ctKyAJnL5BkEeFauMdqIxyQVPMEtf
	 bR3UxyhAn6QHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0C10C61DA4
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 07:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167592846577.17365.2017781104075754357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f33fd334156b7824717d86547ab3104a226d434ea53b34df94b73db87a74ceab
Date: Thu, 09 Feb 2023 07:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675928465
