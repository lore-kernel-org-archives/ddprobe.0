Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC7C29AB
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 11:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DADABC433EF
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 11:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675338365;
	bh=G5I8r7QxvEq9++7Xv5RSthUH8SkB99bQmeULEMV9DMw=;
	h=To:Subject:From:Date:From;
	b=miLNUtWuip4TJS4K3lQUZL8CLTO625KuJWEHy0KmNhAtUBXicbo5s6oRBi1UG/rZT
	 6hprpCCa+hrGYzgyRmTuRWyo9RtmBlSL/QhAFfFmQd9bH2cm5k3MlMwvy9kr/NO2e1
	 e0uXDvmUzh66nIdVurv8IzzfvML/hdf1rfLNhliXDR+9WQLqnnyAvqQDenzH0z4RaY
	 UlerqdEovMUr1ZS6C7u6kacCQzAfCxorsAIGZwSTrU8w0k6PAyQQfYJFtGPpqpAvlo
	 XD9wgrDUJKnuMU8kf/a2VM+DniTOzpxWHWVvvY8exoOMYAVFP+5KOaB2N4ah+8ZbWD
	 mpdfeZ5MrB1VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF769C61DA4
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 11:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167533836577.11336.14178590658218572940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 401d177f43356a3022b1b8a49c72717efc043659be9c25869650e02f07a10268
Date: Thu, 02 Feb 2023 11:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675338365
