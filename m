Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 525BC13AFA
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 14:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C82BAC433C9
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 14:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690554128;
	bh=HaD1V6PX/J0WziGTHYkirvIBEIbZVvz9HOzRinj+12Q=;
	h=To:Subject:From:Date:From;
	b=pwPb3q0lLQGSLBfIEYY519tQgIcAWJrhdLoMQW91dTnWv+cpMW9uCeHYf3w4hQ2TE
	 KBX6Sz54ycIbI+b4yGwR/4oYO4sQqpQk4ajxZoFDWfcC56USD1J++1i1GquHhXevOw
	 4FJJVjJ/nZpq9CVZ8VaP8PnkNsl41aeDuKhzakel6P4R584ZlooMsqIguwaNTVs0qx
	 Im9KT2lHZieruYhtMx9rnwloBFx7esc09k6UxIKxTiKp+WBS/NRPqJXS3BvfidWJwl
	 Eg47J8QR9zUizTFksadcMDvipY76gblaxlWGG84YJEp6024FQ3ycEM1akhbVVrtjzb
	 1l8VEma/14zOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4ACDC001DE
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 14:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169055412866.5159.12400099857414590255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2c63415f4827e4da71b3f9e8814709788ee99e880efd3145d9eff1ce919619b
Date: Fri, 28 Jul 2023 14:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690554128
