Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D367C17D1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 05:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77188C433D6
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 05:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661664052;
	bh=phf09WPAofl+rkSbSY7dyJzMgqxTcol1wRMZKQJkUco=;
	h=To:Subject:From:Date:From;
	b=juCFoDxHWtVXfo2K9HZWAoAtIOAfr13eeztlsmJv47EYGiXNpVY5ZbYJ867OYUAky
	 A/CFYrL683lQpqDZAPZT0brEFuQ2Ean3aYg9EhV4HQnJT81o+IcnBXTmVpHGeVc4Qb
	 V2QS3nLb3Zix1sGy7wIXI9vV5Pw6Hz+IS5zdhe/I4iC6XZ+bHL4pgC6mJv6UxPcmnC
	 CtixZgzwuLRc2s2x+DXQJClLkjSkDfLgQXCYOibTwk6zVOFo//E4EgJkjlPVqC7CfY
	 T3NMApxC7/nk41Xl1cqvpKe74GP9BGq6CbO1J+fKOPGuBp4XxPKuxCoLOHP5+pl8bp
	 8NQn9euk9KNAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ABB0ECAAD2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 05:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166166405233.1706.15599589504402871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46c201bc09c3de5136d49c990be579d9f27a4cb2c69c905c3f1322aa3ce569a0
Date: Sun, 28 Aug 2022 05:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661664052
