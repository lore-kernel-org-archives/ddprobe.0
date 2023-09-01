Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 694DB28FA
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 06:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB15C433C7
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 06:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693550048;
	bh=aO1plNpAvOTryTYlmTYqssqXwMy95lwog8tQjK/XG04=;
	h=To:Subject:From:Date:From;
	b=CVMcjDKWhDAbqo9om9cMBrXWumsXtk9oYQzo5NobDKziVqmZC8+1Y9lM8Bdz95WyQ
	 WPHzvA8KfBSuwMRZ/J97KWkexi+lYqUScUKLN9NzvuQBRYyV/z//D8bB/db8TDpv5p
	 7nS2BejlqOgs2k6mBKInNxA6Q6DfizYPh88s1I96dL+4CsXhx9LFoztgwmsLMrvfUS
	 aq+JLtcpB27ZmbRQrLBubHQldzZjg9cZJUpGFinv6XaoWVOPedUbonJrPQpiWIVY6R
	 4IIjlMHikULiWf+cN8VliEWHRL6OtRYeVKHdWRpmKaI+XoddFDNGbM2/9Nourcervr
	 BpYetJIqoqs2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5507CA0FE6
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 06:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169355004866.28817.17694217011959519966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91678c2e5ac7643cf87a35143eea068a8b4ac93636c31a330edab42238d42f0c
Date: Fri, 01 Sep 2023 06:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693550048
