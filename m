Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8484637
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 23:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FBDBC433D6
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663457453;
	bh=w7dP7v2F+37/oznaKMcEFLWYBd5rdnU24WzM41RNV98=;
	h=To:Subject:From:Date:From;
	b=k1b8yUgCSh0FB5lhRFbEAXB/CQBJTI1lCl+xLX40W7V1DpGz97XelW8kCwx5kFHdn
	 jzuzTebOnW+fIdmVflntDSFy3Belb2sMdmHakvRZg/KQXGxkSQLTsaH0lMi+1R/PwT
	 VkQCEiM8KM1/W/oEsBpMTnFLsTS1XNbK2TMsBfC/+aqBdukIMJ1+3yGX3NkILBZqYg
	 WvYzJDxZBOOV0du8AFLV3Gm6/wGzUUbIsFga3EmzL9Kwm2NBgk7CJKNhqkGU6c0Y6L
	 6ImoajD6MoSOcConvCKiQfryAMajvoBEPWOZboKCIYjVRNcc/oasvDvMlI1hFKcq6T
	 emoPUzFhDyA1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53591C54EE9
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 23:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166345745331.31668.2871287872387593833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5560e9c0bea6ddc2ce136d1df579a02fc6744f7d6b7009cc202e3848b1caaf31
Date: Sat, 17 Sep 2022 23:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663457453
