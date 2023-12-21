Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01C05623
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 00:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QmDljuz/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 770ADC433C7
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 00:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703117296;
	bh=0dC9VlR2069TGh52LdDa7TawC/UkgHQjpJ7nhs/HMpY=;
	h=To:Subject:From:Date:From;
	b=QmDljuz/lSpM1TVcAkD3SzqQhcxP9BBeukwNBLBDoQWEhAJQ2nELlO7Oz/Z8h3VE9
	 LncbtS/wkgawW+yps92i5+AIf+U3YW+eghOll7Sj3qtC8caSLfDYSFsIu/+8NazMii
	 VebkdWR0mjfHuRAMqCsy541S5MQ0CqHZ74i9yp2k3oeoltD9Q4jCCRF4gVHQmRztHB
	 lri00pcz5Rrd+xx7zVtL7nVho1JUNW6GsdDq4nlQ7/nEVugt2WlMUWfd6cpBbjYjlx
	 BYTVxewphyt2vLsPxBBYoZtHCOD454+4mS/tASD4akPmrYNixzFNMHSXswGXI+NVmx
	 4inMF3AuYcOTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CF9DC3DA6E
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 00:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170311729637.6567.11444453291084635545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49903bba29491837799f5385262835e92dc013f56b88804c8b872d161ab78265
Date: Thu, 21 Dec 2023 00:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703117296
