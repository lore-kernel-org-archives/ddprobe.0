Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9335E1C01
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 14:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 698AEC433D7
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662820853;
	bh=4AHJLTv6AK5HxWpCmIOt2c0Spwx6gcLE+sADXiFgj50=;
	h=To:Subject:From:Date:From;
	b=t7ziRtnW18fbcFjqkkGayxo1u6gmF17A8+1ZodbvBSDgtpeSWwChutw/TwajLgIWN
	 EtYtS3G61CDIcn8UdkEewULRW2YEe0Pxufz7p5vFlppWCjQcZ0Hhy36qgk/EVEaglN
	 OjJT9fPDU8muvRVkRtCEae8wiYD4B4DM5siNhnR1lUYEzpe/lDHOGpAVaVF9CTB/Yx
	 NDcu5HwkI0ANtfBpwUAtqy60Ia51Iy7seL3R+G1PCfS13a/QAgpkSDkQhMiHxfygR9
	 BIHjbFSlYVDXnP3sn8M7qTa/W4Y2BKD9dk3OD5QUUl+1xp7ZBS8qsG6hrNzH5CREWm
	 LlIcsbBTZGfQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52ED4C6FA8E
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 14:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166282085332.5562.15337727587564968418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3efc5936dd4221caae032e31d701450840e3a99c55c4e130ebf421ae4fa2f74
Date: Sat, 10 Sep 2022 14:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662820853
