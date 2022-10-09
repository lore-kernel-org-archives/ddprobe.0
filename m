Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C590B1C32
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 07:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73711C433C1
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665300653;
	bh=KHvoeT7ZJ3SEdinlVy7IpU8/YQAq6XRV0Xs0KwSeVIg=;
	h=To:Subject:From:Date:From;
	b=RA5VQEEkmTUnTPSae3nm5w4NFg84BgSNzTfiyDwpVhRucvnta13FaJNACEmJnrW34
	 J0ORsS3PUXpQVk4stxV8r81RlBbrBRvy6cDVG8lU4MGRsiH2bzFLbaNDj+Hqk9JJUv
	 lo9pOEo1KEMz7RzbLJowtmavlkI13fD0SqBg3C8yLfK0lGcrKl9mFg5QATp1KYXX8l
	 xG3aC82td/zjiEuXaCk5z9MXWHGPh9yWMnzhLXQi2QAcrv9oERBYQWqr9kRn04kWBp
	 pe76Zt9YMSfHNlBwd5j/1v59hHqT6llYvl2bWKnyt7HtOPlwDMhrn/AdnB8SNRkXxk
	 8jcEhYOTnaSxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58CD3C433F5
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 07:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166530065332.21119.15331344101264848673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d7a6ebf1e7eed5a232adfeaa82b4b81babbd9c36277a5bbca05d8741f1098dd
Date: Sun, 09 Oct 2022 07:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665300653
