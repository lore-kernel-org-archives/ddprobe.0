Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33BEB7F
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 08:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D85FBC433EF
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 08:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675325765;
	bh=4kvyvIzhQEIwTbfi2oJHrPFJT7x4eUW4LVlR4l44ZNQ=;
	h=To:Subject:From:Date:From;
	b=rA3ko5WzpAsPaWCQ1IZuQrIPFBGLC/8ut/vp09ncgfR9wn1SsKh1bHnXJF2SR/5w+
	 lFmJEgUpDh5DvAQ42NqfGjkYtnD2EEDICeNqs0NedmhKbrRjWup3vMGh/TleW0NCjf
	 xqW/k9Vwk43vWR3pTv8vXfXwOq/aNBWi2GL/1f0HgiJWXYImsw50gaWS8D4F56cRMw
	 0gA8rHwskWZhVa7pJ0owOrTHw7tHbKZj28rNyrnaCnMrBAu98N25nYT0lQvO7E70uu
	 98VqXdwrKtHGTSdqrVy2u3pwK8wsra5cIfoyrtGGS8KXJcG1EpAGe6VsINv/TWYo1B
	 14r1uh2GL5VPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6FE0C05027
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 08:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167532576574.29943.16446721678526063347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb5529d205c9408640e0f670db59a6ba623d185382e5263e6e74031d3ef27bfe
Date: Thu, 02 Feb 2023 08:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675325765
