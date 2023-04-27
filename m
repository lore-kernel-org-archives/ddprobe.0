Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F9B22CA9
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 00:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1F35C433D2
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 00:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682554086;
	bh=MPlRAahJsdGve0/KrMr5BzWrcQZo9jZ2Tf0UCyZ1O0g=;
	h=To:Subject:From:Date:From;
	b=EaOgkvxf/bwAIWQL2TqGwxAd87FRJoQKw9M0Tu/yq8eyJivOB7W4YcyCDbKG8y8P+
	 DLvY6Mmm6hbciRCFtbkP9qPf9k/6FRJglz5HBn7cRQ5weBVHl6gJVHhjQD2jIumdgb
	 V37+Ao/z4efqRS2to1JpjHYxL59s9sdECbpOjVJcgQ67op6/lgFRfnQcavkzoNSp/N
	 zJb5RIicmxY3hoz41yZnRetbKIpj/7BRDCz1KannKLVbYNb/Xj+3NcrdgdQYrw5moJ
	 Q9GMSaeUvtw56Sp03oiPYz0NqOXoU87j6FWUE1wbU07KDWpXzfXSnN4j8T/eU944fh
	 1XxPNM/88tgoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2009C7618E
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 00:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168255408582.11267.2983118346382093231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd50380769c63ac212e01905930337a7fc006740a6de6c41eafdb00d1d120851
Date: Thu, 27 Apr 2023 00:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682554085
