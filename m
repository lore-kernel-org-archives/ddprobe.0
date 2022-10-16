Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C11DE7E4
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 05:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74A45C433D6
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665898853;
	bh=NXVqML/TVLDxLb5C10rBlGPIC4BSkFbd4SVKGY6Mf6o=;
	h=To:Subject:From:Date:From;
	b=RLBq4iSHHqQQhzYrWP8cpPW5K8NbU9dpWMmzHGjoKseZZMmo1/93NzhOgjFiyUSoJ
	 gPCjFrS+1ch9Xu2WiPwXWpN4NcMi4sjR2xI2lFd4CoJqj135bIamAYlwYYCHWEmpDK
	 mz4FKwQL25rugnUpiD8f9Tgx4kxbzYCwbF+Z87pdx6VPQ+7VX0R+HbLZ9EjkzKYE0L
	 BD0jU3EmspHGhtwPeSSrRVwDfVuxfwfIeWyXb3me35a2lQg7xIEmLDglmNDxjoz6DN
	 FzyQdIEK7+V18yN6KqspSkkwW6QEh6xV+uRYcd3vC+osV58JRgXGS65b4XwE9e7Ki6
	 sI+6t5HGkSUCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56A09C4332F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 05:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166589885331.15333.4631501717471811565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47ba20ca4218ef64d40129e5bad3d254d4491663c7262fd3aad7a9ff781f91c1
Date: Sun, 16 Oct 2022 05:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665898853
