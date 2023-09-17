Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A87185F
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 23:15:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C59B6C433C8
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 23:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694992508;
	bh=i6f4JS9cE4YHVakO//5RUl0nfbqX6ZJTTQyqCWDo9eo=;
	h=To:Subject:From:Date:From;
	b=r2YhkKM92OcY0x7oTt2xuLkaiqb/juAtriuJdhiP6wnPQ4gAv44+udUY7PpRA/lxy
	 2xuaexZBZS5m4pfK7AO6BvAqI3Cdh1wvee9siXaoIQjAcbvm4lkJNl9j+O6MnA1uK3
	 z/7CKUFD86eWdabEQZ1o/jypHXHwxLOu4mNc3v5cSnuJe7N1MHQ3pOPTWRMyoBEve0
	 8ADmrXOSvsQvby1LyCt07ABlqyNC9AvLrF2Awh+sL/NeG96oNNrcsnfe3vqjCWVDzM
	 abcqSvWWENZgeIljgFzPT385fRMbLjmRPcB5nellhqhUd6T4uy8Mb6vuHrc16LoUTC
	 DtISLK8hh1WQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AC2CD13CF
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 23:15:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169499250866.23934.830543042851356058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cf8d1c919eb0ead407e6c77f23a55d77d3be70920914dfcd1f4b28922944b73
Date: Sun, 17 Sep 2023 23:15:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694992508
