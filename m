Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4388290F
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 11:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F7B4C433EF
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 11:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673524287;
	bh=Tkh+Yyf2IM9fgewEAKnTVh2XZQoPi/+T+LhQhOCIV2M=;
	h=To:Subject:From:Date:From;
	b=CnGaTjoL5oLQy1B1s1NQh3RtXUK94nY4Y5xmyEqXRtj8AAYXpLCXfavWaxarGvMa0
	 owLw7TkVpB2FjqVtEFADj5rEy+C4aNXrasZV2RIGUc4SQbDEZJU8GPRos970RcsqqL
	 n/fJFNP7kJUsKlGl1ALh78QgI9RBU7lWeRU/Fi7Q1ChA9zqufs6um9Z9kNUF/5kief
	 0C8yssZ7cX8rIejmEXPnVkjwZ9d4pOX6MtZ8dC3dkP8UCPzhfjACcdP0o8/9l8WQ1R
	 Ruqno8QYoDLQ+BVHRNvOLQ/O/h6CqFpBxaFQZQYcrfjLJF7jQC3ORtNeBSj9ZziYat
	 hq0e7H8qvy3oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 650CEC54EBC
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 11:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167352428740.23538.12841806442189070217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9087e36c70794aa61c56b82c02a6188dbcd9d59156bc44b544e6a606f2977429
Date: Thu, 12 Jan 2023 11:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673524287
