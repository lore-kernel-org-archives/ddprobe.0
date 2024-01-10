Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209293C2F
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 05:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uefoQ4Pm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F11DC433F1
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 05:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704865096;
	bh=w4ZfjCarYB8JZyYHHglYqkZl6b1ZeaIauUU3T8u5qns=;
	h=To:Subject:From:Date:From;
	b=uefoQ4PmIQ/Pwn5K9OSYRe7NU7KX6VtSA1dUP1mB3DSHZyJg1cUaucaQflcgCIYbn
	 stzBnAFug/m/lCzbvCbDnW6pZKUSAdKDJpsEMS5cUGS/NFnFcrNE14b5TBeTaWzj0H
	 sklz1juYe+4H1IeaIXy1HgxZqZK+qNlVu6/TZFzFK2j8A4NiLp211vHuqIQmg8U5Ef
	 z5YFSQmljO1+vzci1GjPxZJVZWKGmGF7qNSpM+mRAIgsHR4IkEifKbvA0DR+h+JL6C
	 uzlDhPgTTGxjWePNsC76Esyj21zItlhHHNbDk7uMjwxeC6D7Z0YTVAiTvz+YSAdBJa
	 J4SuyJmMwF+DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EE32C3DA6E
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 05:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170486509641.30919.13560633438855860204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 676af612ff70d076e1f8fc08975fcc8b198c1497175916fb9b49223d71cca018
Date: Wed, 10 Jan 2024 05:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704865096
