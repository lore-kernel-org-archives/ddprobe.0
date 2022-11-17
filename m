Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0FE88F69
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 22:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BD03C433D6
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 22:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668723654;
	bh=77t8ctS0lB43Exy+wy+8qisoZJfcywGL/V4RTDSY+qE=;
	h=To:Subject:From:Date:From;
	b=JnUmtJVTFAl36wWd/yPYME6nuC8N2iVQlp493+py6fXoRjA8iAZkxlBHilPVFjqs6
	 eSZUynnP7lpNIMOS5hBCfqQbnR5wW0gOIi9LLzxWoesDZG/oQ/oZGSofrC/2u3QdMn
	 u/YG5cX2diIhh+fWEjo08O0WEkYahLB6cjc15OtPciktD24NW71k4unnkJEuqzd+et
	 rW/Nyo33gtsNuBvMn3pTXo9JQ0+RR+YkUoonj/M6XCKXcw0IwvOY/fOt2narujez8M
	 zb+MAm4KNEWcjRdHZJ29HZQ0wyWn2Bz8t7Lo5eKpgnATTnYQzpOCecadUZjITBoE8z
	 2uluosyhYQkJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 596D9C433FE
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 22:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166872365435.24501.12548002062878365936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fef8274597284d8fd9c837d442bf87be611408c8fa125ae484cdf022408be3f3
Date: Thu, 17 Nov 2022 22:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668723654
