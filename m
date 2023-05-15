Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4432CD2F3
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 15:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 019C3C433EF
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 15:19:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684163946;
	bh=V94vJseBhIIak9SBKfWVQiwHmwvkMuL5WgS7qu5gXko=;
	h=To:Subject:From:Date:From;
	b=WLXOhLRfbsopp2jd4Uc980QZyk+fxEscqcyX4lCwhaH7HE8UISuFP42IkjgC4Lv/0
	 pYtU5SAx6PIaSLdrXCV1Ivelsi5ZolHxUB7lP1CfubfN763sRWxTr6nl4uCEBSvu/h
	 L4RD27wmzBu6XED7vXCOYm1hC2m/7EZ84UqXaX2qmZGtr0tSLHoI2kHJiG0BDIMHES
	 pfLdgwOjzKqNWOigZ+tzz0QrbCzWhhnmXuPOuExg4R054CxxZuKq6bSSUsgVl+E8qx
	 vXCZziJUrZEGMyehGt8KglY4P2OD9wwQvPaPQhhNFO4WHadwKyQr9vdEl0Dj+/FfeO
	 i5TT4Anrt7JcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBB1BC77B75
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 15:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168416394588.8159.16542733048001748280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 763ce2c959a3bc6831b66d041b3a35d19930e01ff94d6732fccf6201b8875aaa
Date: Mon, 15 May 2023 15:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684163945
