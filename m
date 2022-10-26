Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6D677B
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 00:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D587C433C1
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 00:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666742453;
	bh=OzzXtmqE6YyQRKEb4lS54WqMlpNwKK6eAnm3CLEZ6wI=;
	h=To:Subject:From:Date:From;
	b=ERzf09bT5yiNZYNEWdu8+DR2ngDfqxbfugyV8O8wZR2W5nQwAOvpJ7Oh8jxT9h9rX
	 ehFWjqbV+ACl22FvKtyPE17dLm374q4/0zZSiP6aSb8pNzIRc6hYLmOBiqC1lm78KI
	 BHkNItuqC9OVmWV4w9rIhdCDvUEXyr9/1x9M580ETC6U6DveilTyOiWpus39HZRo02
	 e+4K6bAcIsW0soPtQ5J/XBcxGXXELUe0uFcGEwjdBxTv73J1uESq5R02MhzvKA1C4U
	 4JkwehLQ6kY/Yl/F1DSEBn7MWvBf4gE9dtSPFTZZPgA4uu5yeiRkOh4cb0nAH3yUAw
	 6dGYgZnV3ER0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50AD3C38A02
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 00:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166674245332.17818.17112828496223731407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57bb8f974fa1eb6c7080424a312337c8d04d2dfb721edfd3fbbe15eeb8a58e81
Date: Wed, 26 Oct 2022 00:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666742453
