Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70144168C2
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 07:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA721C433C8
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 07:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689838328;
	bh=1NdLLiwFzBXWru33kGvbUOxT6vr6Aag5Xi/KQiVAX+w=;
	h=To:Subject:From:Date:From;
	b=d6T+BHMaI+Kd0xc4IgMEtXWG609FYIajJrlc/z1oXM9fenwY/QUcJC/+usjuk2D7M
	 vD9M6zOu0GZj7PzyOQRA2ed0uIzNSGAtuNrEiux0UwwwZkExDLStUbC614vjImLH6/
	 JEhiDJ8mOMcqAM3Af6BfGnEpi0HfLhWess5fJpKV0z4hke7VJ/UbExm6cq0b2O8CvK
	 KAD2D1NP7DP9NIfcm7CJ0dMByBKSAXAknj1D9PLts9SltvSCB0Gv5AspfGy4ccn8DX
	 jGbIjxM/x8f+tznNeU09vRVBxToxP0ZnIoVS6KJlM7yCKYe9ZaPZc/xHbs9940ruOm
	 i5UsMOGx8MmAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9CABEB64DA
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 07:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168983832874.8775.3626117752123538838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e386e078a723a58167a9e133f9b83837fa05e2d6a6a34ddecf5ce16fd2d8a56d
Date: Thu, 20 Jul 2023 07:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689838328
