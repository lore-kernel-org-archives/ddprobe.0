Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6163EAD20
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 23:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07D71C433EF
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 23:55:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677196506;
	bh=XeWYFVWmC/ENjXBhqVRbHREYThgsiHQhpIw7jdCgHp4=;
	h=To:Subject:From:Date:From;
	b=ZE4DdrsN48dHvClPwV1MoPk7E3HV7udN30S74ZgQcvYkf2jWQ/kzCWjcaGtZU0WB9
	 opecMLVYbWRcIQKvWfO8z2vNYlNek44Ol/VbbaB4nzvDUAQmcjnzR5wAJXdPhQDh9b
	 dm0c9MvGoGckcDwCFiJghFGYFSfOY84Q8zWm20RBwhabadHy6A85yzdn7AhN8CUcXG
	 tlwnIuSZc+zy7aV/5XIQD+7/SbbGf2RJue5781ofnA+4LtlQwOOZetY0vDXv6NSd4q
	 vjYPQRVPonfTciRxqhUcCXDu1dsjT5fIdDd2TUfk6N0VSVtsYs7CXLqJqoqjlO6LLI
	 giRhAr6ZIbGKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D60FFC64ED6
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 23:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167719650586.20384.17170622679642645804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b2a495527ac02067aebbaf3c59ddd0d9cf667428965f32c747b15332dd8be9b
Date: Thu, 23 Feb 2023 23:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677196505
