Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 551DCDF4F
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 18:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6906C433C7
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 18:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693073648;
	bh=zWTbc7hHAiv5WORzIhmq0/mX/1QA1JPAsK7V5dUM6QI=;
	h=To:Subject:From:Date:From;
	b=BBTSZYsr3Puob5H9+NgFEkvr0gnsb+MZdb7l4ls42LdDp8aJlNKx1Qkntgug3kIu3
	 eje/GmWAjZAYNhHK5kGCVxkLrqWwK/mCg3SzqVhOp2B/zQDsHL4nRL/fa0G1PK/0CA
	 ieUcYySNFefzzWUI3r9bvv/yJ0bxr8ov6Vcv9xCWpVDcJgFXQnUo/K2KKLCH6EA/k5
	 DwZrd/494DU6Kkik6uTVr/tnNLekIiyNTPuFyGS/HkuKXLbU07ts8ewUv4FjKqa6q2
	 snKizw+tqTFmVPD8Y/2lFAzwlmQYMaI2NdbWIEvv/IOZqa21EMYKGvn5Ol6nBV4LQy
	 TrNjTH4sPMLGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A75B4C83F15
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 18:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169307364867.32623.1007009985098470226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a889728c26ca6f8e32b0870dfb8b1d39c0e7a640f2e688febbdf2898d4d2f870
Date: Sat, 26 Aug 2023 18:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693073648
