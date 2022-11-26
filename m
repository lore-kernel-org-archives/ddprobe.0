Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA130184
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 00:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CC84C433C1
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 00:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669422054;
	bh=fdVbxiPD1PZI+I4zLNFwTyvSvj1vQpqDejjySd6lQA8=;
	h=To:Subject:From:Date:From;
	b=QJbgO7OvntTRbjk1F+bcPnucrHsI5KGb5mhb34KcyItHzNEdtJQ/42sYRAwbN3+Mf
	 RaSKPAISIN5zT6HbgjpdW/ISwszI3AmdM4rZ+8wdVvRJdSSBOF+V+nE1Q+7eorrKe/
	 o/RECqLI83faqFnoEXW46i3C9n6qWhZsyyER7GDHxGhBhVOC8BPfMw8RDxXuts+6In
	 auQv9fXjmw4sRtdGhDX7XxaPS7J3KXHi73+otNSnXRgV5cjnb3hq9+uGw+9LCiJcqj
	 uYsn/Z+qbh/PKExektrBGa5BdxJMZKg6fDM8AJq/QkXVAYeqGU8/iQEFZegM9ou95A
	 yaBK8DpH3b3eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5680FC43217
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 00:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166942205434.20694.13967027068655036027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9985d884b9973741af9243efe1302d29dcf1c7795289370253d93389e96f6bae
Date: Sat, 26 Nov 2022 00:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669422054
