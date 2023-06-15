Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EDAB15AEF
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 15:49:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0577C433C8
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 15:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686844148;
	bh=BsUKm67ynsHcfB36TdWc5E7B8O4NQs0yu0UEhFYbUrE=;
	h=To:Subject:From:Date:From;
	b=n5TEahAwAZPJNSzkXspBLMQl2d2A9x7FXu8kDly1JdqlsjqY4u58G+sr1zMyyFT8N
	 d/woxwBZ//rOzCtoSXEoSaB1V87Ds4Y2tbikq0Q3zjX8hhSZnGomsLCqRgLgSCWjjb
	 lU53i19x8NbP1MBo8pATpqyebBnUStlb3Qv9ccJ4lMUK7vG0BF/ab0XosnPjC3Xb+G
	 ogu4wQ+1owfKJ88AoIduIFxGCXGz+b1+I8G+vwTQRnRLgzsWBW8l9f2+9RCKhGHzX4
	 otf9kctNhZPhPsFz6WxKbLqfGjMKg+1wUngCBcnEiquJkh96zYL5C+g/CFECeumJBb
	 qSNJ32nPSyjkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5E45EB64D9
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 15:49:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168684414866.6501.9240453519944673719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08e5e1215d8b4406b1833b119cffb2f5866997a0633dc7eddfa3547c058ebaa7
Date: Thu, 15 Jun 2023 15:49:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686844148
