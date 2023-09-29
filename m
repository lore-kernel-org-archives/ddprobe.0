Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65D2917D5
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 02:46:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE410C433C7
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 02:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695955568;
	bh=sl4/Itt/JRWuQQZh9allQLosWaR2UESgW2Pa9R73DIk=;
	h=To:Subject:From:Date:From;
	b=d44sbZ0HZRAe/tHDbOCV9wJdeDeETAOmI9i5vJ1aLC56e5OKXPGtZlc5S3cwzF2BO
	 3U0Dwt8Wbl3dld+fXtof+uVzaveB672ALKfcAGbQ3pRFyeXjOJbSDe6L3C0ab/KXW8
	 3ZNy0aSqPJWofjdDWivdMJBzJvpzBl8lh0suWDL2GhkfdoWkgfF9jZW7yjjb49MC1L
	 WaGYoqAgTKt5mlafqnTW8lN4T0orsWVGE/bOcz5FPN8KOAQ2ym7RtU7eR3yK0SGQgs
	 v/3wjk5NScPg//Pv7Tv+9DsS/g1H0t4pNehMZTXXtulx5Df3GLhd7FdLKe/5DWr6WD
	 L3tyqDR8sKZXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC032E743C0
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 02:46:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169595556866.23940.6893279656881001903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e850ca98eada27d0e48447a260c822b87ba0627f5cbe3bed66e2ef90c98798cc
Date: Fri, 29 Sep 2023 02:46:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695955568
