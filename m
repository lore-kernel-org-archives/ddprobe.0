Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 699837E2
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 00:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1EAAC433C0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 00:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687912988;
	bh=BscjgPFR+ZNqvm2yNEWs3Q+SJ6X4mx/SGL/YRCveuVg=;
	h=To:Subject:From:Date:From;
	b=MX9SLQ3bxDzvdnth7VLzq/e3Gm8yMfezMybuLZi8vF8wZMAAhzuJj3MRwF+bePsKZ
	 JWkgaIe8rfLpG3O7mMU3VXpd2WjEusBAhvVkCiyGeCxxEt7Jj6u0OZDewjSqQjfTNG
	 JVsil7lyWQHNX5bUREDXgCylTvYKTE5v7M9uxF5sskcRuWd5k3xzOfdjVmrqHIctMQ
	 2A5ceeaeIpU8UlLP3Ae4tvgm+kBjm9jYsoRqanjA4ddtpsMJTjDYrh3cMej/nQIeKe
	 6YQXepeMtSh4vbJ++1egElMNC2vuMovYSpYURpqj/N021ZgHc7wU1lhOCZTTXCrP4K
	 m2Sjm++PO5FDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF074EB64D9
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 00:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168791298869.11809.17437951336309289965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 007ac157112821931f64c87d611a1a3771af0f2d4a1519b7ce3b48908f32458f
Date: Wed, 28 Jun 2023 00:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687912988
