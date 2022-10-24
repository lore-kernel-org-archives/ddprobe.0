Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC5227ED
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 09:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BD9EC433D6
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666602653;
	bh=3OlYN0u+sCTP6WnFZuT3k1CiC7n1cjJMVd3w5rNRiKI=;
	h=To:Subject:From:Date:From;
	b=CbAyQ6lf2U080RC29fQ8PNqyh92GxcT1UBLXi49LdkCOgzeq4cSst9XyDpJ7rsbNN
	 V2PzzxHfP0/BNS0loJebKCe8qrBoijVot4i4HQRyvEg2mnW/LBjmtUdAad9GsatZwx
	 /WCN1/VI4r/WdJQQcGZhia3tcEOTaFVHGfWrH86xc0v55+tn3ZYNE9VPJPIfY1B+V7
	 /Ubs8WNwhUTlfOEh2ZuV4P/jWo/lV434qrOKfCD3GgavowcL3Q058xJW/YDZA6d10h
	 2Eqn41Zywppro4r61/Swk8ymfzjrKENO28ZjoZG0VlLuaWDii5VHcb3dujmEamWWwr
	 aNQ+msdFTb0ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54E75ECDFA1
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 09:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166660265334.7529.5927631592189501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ef648eaa60bc9d63f3b2295a68320c4a84d9e0fa431146965f793d42a74d396
Date: Mon, 24 Oct 2022 09:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666602653
