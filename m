Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1F5C136F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 06:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 964A6C433EF
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 06:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672294287;
	bh=Qf9CunIMLq8o/8F9WuClt1rWC540sxCeiIQd4qvriVU=;
	h=To:Subject:From:Date:From;
	b=sdanXuMLd4RIPmvQZ2mvgxsbGK5iflBPlGzvInuxdBHvqK5OADTMw/0u4W6gS7bs8
	 nybXhRALVHZNnV5eLUnjGA6V/uEX6eS0OnH62WMoG9HPcjWIBFQdL0Iqk2p1T9Wl+z
	 0XVL3R+I+WJ6HfBzP0xWvap5DwG8IaRo3jmfjO6ZGq6wP9BhpKbWHfBK2EJCC9JYyY
	 lNq+YjGGGI5xndmzyAN0Ub8+oY1AkULMrPJ5futPf0/cdoCHywqCYAO/Dr1nVCIvdD
	 qkRtLisWftodGmPDVBi0G+0H1XCTfc4+CvmqfM6SpWIBC72CO8Ne8RvBwAKrU6Bet/
	 Q8g/CXSNVDZyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EF4BC4332F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 06:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167229428740.28275.10040690524046849729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3afa07fcbc83af2f5bb0ee639427df4796128d1fa3baf41f2bebf3c9f2de996
Date: Thu, 29 Dec 2022 06:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672294287
