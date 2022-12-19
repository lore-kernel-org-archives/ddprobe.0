Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D131D10EF
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 10:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80AA3C43396
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 10:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671444687;
	bh=gveZCxIsmnHWtysN4tGFtmTF0t9Cne4vPXZMBaprS+w=;
	h=To:Subject:From:Date:From;
	b=nhb9p2DXDhQg1PzYYpGbIZkGwAwvfhfpVUmc+jxCuMYnV7rZuXob02+S0aJxXgiVp
	 xDlTu73OKBSAaBVvbHA6sWe5oAr8rrXLKlea0UmrdD/ZEa70Tpa+XTh8QsceIdrMgZ
	 kIkZVaxxuigKir0MtgGg9Zb8/JUz42K6c2KkKdH6NekNNct7DzBkV5yUGY0QTYAgnO
	 x6pnV0Z3eRMxqQ3NJ8rKsVs1o5fhpqIK9/371n/5OST2MG9oHA6+y+9jXAceW2gslG
	 1kUd8sY+1oVji5cY/WWMDPtE65GZPFGIFdKd3ZdHqAQAEckrQsC8SetwNJ2y65MY97
	 /ZMDZQNPjpLEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 647D7C10F1B
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 10:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167144468740.3267.3637604594340058307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc4415b972df99c09e0c51b6746c8b750f287c913e30ad4d9ba7436fd3147d8f
Date: Mon, 19 Dec 2022 10:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671444687
