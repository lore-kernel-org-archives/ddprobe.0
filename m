Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EAEDA21
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 03:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D73F1C433EF
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 03:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680750425;
	bh=R0tb77h1qFZSjynyMVEwE/+2KaZCeLvgPgXuqZDpT7Q=;
	h=To:Subject:From:Date:From;
	b=HSw6Tnbqdi92iMuqvESFAHbrUlJbZBtWKLrHlti+79he64sl3oyMT64FfNszdrXoD
	 O3c+QoEg2gIaKW4WSJegTEi+pDBWyrqJ3Ln08Mg1TYx+kECfWYsHWyX6zVxUO/OH6M
	 zUb7hDUXhaCZMLYCWxaedIpB1S8ow8XrcRO7tOIfLfLFlItPq+XZCgsvwUD9rG2ke8
	 id0hPSkzfjuHYp528khER2aEi1SmGwV97TaTNSdqRCAnMs17FEimsEnWlvtVDZpD6V
	 CP1nS4AXuZgI5qDzE0wObG6FD1uL9J+9UONC1Q75iJwM/ywfbL83ras6a8c1mCtW8j
	 bnoAZvE0dJf9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAA92C7618D
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 03:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168075042575.20351.10140861007566015926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73e6ae147370e03ca7c70d3638c51dbbade38582b72602f27924f204305bd65b
Date: Thu, 06 Apr 2023 03:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680750425
