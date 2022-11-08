Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7E2E2CA2
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 04:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72BAAC433D6
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 04:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667880654;
	bh=vbQ7O8NASVjKY6oARFqHu2HJbv2SpVHOZrw5WmRz6JU=;
	h=To:Subject:From:Date:From;
	b=qa0643r5sEQOgcnuvmV1yrWD/3PNORhaMjjxwQrprXG8P6ik6HMk2tZKB9PP8Z7sx
	 x0k+AQYK7gZKSsp+H6UY62AB42PGq7Gb6gcriBJjMBhXV8q4XLWvh5WFiU1gxcBNOT
	 IqfM1ZZ1bBAqaY28+M/9pEJ0HEApA60bsU3bYwDSC0pH/H3MGd84yZpzjwKU/wlzCz
	 Dex0qJIW7UwPG6MYUYynKS0F6fnJ2jgVwQiYJ163OdETJ4QH+gGPe9cHaHXapjMAzC
	 ob72HE0r1y/iCqQKkt5KFV0z1LRy7zfMaxMTXrCJG3ZrR5B3eU3BYKTVGAxvZFtbcp
	 owOGIjS0Ce/ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D741C4332F
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 04:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166788065435.10487.7065087055845530414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a572dea0172965f69c2bdadac5645fd4d5266070eb6ae94c53bc876e31d71b55
Date: Tue, 08 Nov 2022 04:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667880654
