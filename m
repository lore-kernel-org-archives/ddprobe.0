Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C235D186A
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 11:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 693E8C433C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 11:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666869654;
	bh=K4jmkrOkRHh6ur2xoQls3tMDcTqPIsBJ2OboEZk5tKg=;
	h=To:Subject:From:Date:From;
	b=DUr6SPt0cJZxb9aQ/R/Un/4URrK49Mb7OFKktfyv4/7Q2Y129t7T2yv7Iey0eYR/u
	 6gntzFK36pqFixs0W+1P0N1/+68H4XB+g3YJSaLwL8xzhqLj04v6QGs89BCOK7NxQY
	 5a709wPH9R2paSqJuwMxbXNrPEpcQR/Gwwi9N4Tmxil+HuE/nTKgW9je9PmKOWcXsJ
	 oBgTwE1RW4bch2Ypkpq3Z4hnmyblYPiZ8h8nc8IiWDQYuNcArh2xQbEM5WyV9Tebtu
	 yZw/P3WGzktm+kzsSJ0JKK9AtZOcMAWjoM2xNkknzoUkvCxPFaWXBeY5aB2Rqk3ueY
	 1KD+YjJrCluHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5294FFA3742
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 11:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166686965432.5245.6833550027702871498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15963cb270cb789e5d66aae63b753c024505f371bbaacc02c9f7bde18becce8e
Date: Thu, 27 Oct 2022 11:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666869654
