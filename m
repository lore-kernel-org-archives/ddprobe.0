Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A143C30
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 17:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBC68C433D2
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 17:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678814285;
	bh=hnsBT2hfIx+qYN01STcePAVbzf/b+mssrafbFKVqp20=;
	h=To:Subject:From:Date:From;
	b=bJSR14XCHNh/baE9i9XkiU+O2WEzaApS/KQ6MEjfVeBrUp6eOXfy8Crlsg2/8v8Zo
	 kjp93yoiNtpOWWkBYdwkJcH+WquTSuh43DiOyjT10uh+0fWE6G9h9ahyh+WHOTHjLn
	 hOgsgceujmBBm6IgMTrRropka8gvlLeUEbyRXUWaq10tuPG7wlFnMNjs+/3HrwovGu
	 v2glAiMMXlkiZvsDuEsg8grZy7OfxP5o+J101LVOpEk/6uTCeZWIg2f0BEJiqMD1Mo
	 94iYDxjyHw47PektR503FbISQeTG5yPZl1SZMHN+QBvflbEcNdXy+J6mH7Mn8OIuDV
	 W0ZLtbsLX2D7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB7CFC05027
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 17:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167881428575.3117.14185178229971552049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc7debf662014d6bd6885e0b7bd7e8fb68c3e1064c5db6d2d604c796443c0f31
Date: Tue, 14 Mar 2023 17:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678814285
