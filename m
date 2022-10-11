Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC2A815A9
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 02:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B559C433C1
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665456053;
	bh=9vY9irkyrK38gHdpE8jxc8L/5ZUk6e+O2GWSOfPAL80=;
	h=To:Subject:From:Date:From;
	b=TPuAcmbfatdc9Cyf/z9zS0O4DNiXhcG4NTo6uIDtJtygcMaTQplGUwGc/temTix21
	 MGtk4L2gwRNfNtehAReEYqbbeMJ5OVcHd4o1f9p9FrZvrN2WAcyv6TCpTHyRkclpOU
	 LIursSGn11yx3lZYEXDVyBUZX5YEiLYuAUEa3eBhpdGfeIyKI1+no/5nB7+7TDtKr6
	 fdr0RHYD+oG1LF790i3hTzcD/Ze66S2rTRPo2JV/QORGX8xVY9zmFNq/qb+Ixfa7CQ
	 gN0iEj3WbucuB33MbwOMuR9hNiXfHEujfZm6MgzcVKMg2VNayi3+/nHsxpxK9+gQU+
	 GRKRCL1yKEqIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FED0C433FE
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 02:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166545605332.27995.15431495406995577395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0224e4b94960f5fb835100220b89f55af8daf7f0764cafa2fc70bd9823a94339
Date: Tue, 11 Oct 2022 02:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665456053
