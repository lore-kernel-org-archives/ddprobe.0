Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F12AD10EF
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 06:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAAB2C433C8
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 06:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688624828;
	bh=LLJNc85YZImxG8rQJbqF79uOt/4ggcC10ig9nWfR2ks=;
	h=To:Subject:From:Date:From;
	b=LTw3i0sqHiG23sJbBysVgAjgYHgyswlcHDkMsAVvf4uZZ+Wg/KONwtPqRYtM8+99w
	 x1Qjr2HJnHPjynqmRTfPhHiMbmsVqILpcqQH9WOxno+lxukpv8WY3Oy997eY80GpXy
	 2ZZ8AHGfzHVclm58CGQ07Lc3xRgiuE5NoOXmlpomKCdbw9sJp4cXt/XhUAb62onZme
	 lKpxAWQhVgnEUne/UoJSg6fVJ0FWCcg/CKZona5KBbjG6J4jaJUi1Kg0DpPqDc0E7Y
	 vDkN1GFqAqgR3yTKY+5ocd+VkLNEgMPC0wBGfQF8C9zTMWdynaDNcoZlsafPOPCdzN
	 376NTW8UYYuVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5D8EB64D9
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 06:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168862482870.29177.8019653194456416804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e4f7d071a7e3e99e9214d23daeaa7fd31487a5663888a5a3e2f6146fd7dc576
Date: Thu, 06 Jul 2023 06:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688624828
