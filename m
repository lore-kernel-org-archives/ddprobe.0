Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D02BCED8
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 19:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AF68C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 19:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670701887;
	bh=ST3ZCfVfvB9mnqtiO6HKvq7E23EE2yYExRybfBhDsDk=;
	h=To:Subject:From:Date:From;
	b=W9aIlipEg6giiyF10xUvhVhOZIYoByf0ocG57Rvwz+WoMeIyxBQMeE+Ah6aIBZ8o/
	 VFH0w/nooX57ZJL1Bk/l6bQc/TSoCy68yeyDF7WC/FEAjSIpmcS+16+xkjZRAn2LU5
	 sb7lwSTxmcaiK7uI1n+9UfWQryTBOEueG2w0BbCcEBo+nMwh8rckKu79bXf5FwMLqt
	 48G2J4aaNyMwZp+adM4y/7l6FEExXvgwy5uT/aIZM6IOA1lmRYk9M4+D0yc4n7Wh5i
	 lPoLYN0useK/pehA0CoN+W6fO2tFhFeNoZ0zKgjyFzbPRdLXyKxuiKbfUGCzrUY5Hu
	 IZcHGAWYu8/ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F9A7C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 19:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167070188738.4137.12718763290078246423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8251abaad0925d8a85e34f440e84d2ba452425bbc0f82b966830125741565e45
Date: Sat, 10 Dec 2022 19:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670701887
