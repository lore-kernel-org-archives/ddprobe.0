Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3618933C1
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 17:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8066C433D2
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 17:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675616765;
	bh=5Gpmiv2nE98du961N/dPjOFxVRQjvzeIpHpfopSqM1w=;
	h=To:Subject:From:Date:From;
	b=F+FcSvzJR1ml1s3S82nI0m+7cVLJdx+mNff01VlJyfFuQ/Zhp38AS11pFrcD+UWxV
	 QL5p32PbOgZqAIiJgxyWgq+koikHPiJ9g7mn1QQ7fkOZmGoB5xBWs4EVlX2IZ7Uqd5
	 T5RA+EyHRRsqqzE3IQsH534QimhDFm95FL4Oqb/Ep52wWbE9z/hsUcvwHpln65tQjv
	 /4UM/NZVkm8SXnUtCV2CLS4vpWu54OMajBrlQJEVlxWQc7c0xesHwnpZfQYFfol/SX
	 Yn6cIXxHzPqs6+pDbVAbuqn3eZP3z+ZkckQlUIfdf8kfqU7niWb6oFgfqIxnVYxm9K
	 UnXrvKfEpifHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE4D2C636CD
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 17:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167561676575.19546.1112401418755210435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1399191d366d33a72b98a70706d7ab7cb62333cc6952fe4123820d42740f685
Date: Sun, 05 Feb 2023 17:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675616765
