Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4133F946F
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 23:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC3CDC433D2
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 23:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682034425;
	bh=lG2HXrwM0YxpD/MzMsldbvHMj5FzRNTrC4GOcjDEWO4=;
	h=To:Subject:From:Date:From;
	b=bCPGpF5KGEc52E1pdp2N6cn8otB27ZLQeKI3cmhk6uFbyhGI9YiUwM5ZLfhfzw+LX
	 tcSb9vxTJJC4vBGALh4q3KJ1ZOnaGw6o2JUTvYkdKpnxPGTMhn1VDbf8Wp0xORgrDW
	 IcBXL14bshWHCO5Y7K5yukak2jWRgF/5aHnyDe00pqbZR8hELrbsdVJwBLOqIPpFU4
	 cLgUryg6NObZgMn92VOLqRZFkKo+7wJoKz/TBd1STlSs+O+jYF89SjC9XZI2MjTqj4
	 twaH0kh+DIhbl/xDn2CKDeGnDjaYRVaXdf5wEbCOkpaudwTNK3FKYAG0hWvBFW/TYu
	 OIz09pxevFfTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC8C6C7618E
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 23:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168203442576.23112.1201564205762024248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5df4cc7476ef27cd95e82c6040ee872c3fa9946fb8aa065f745d30fb263371ad
Date: Thu, 20 Apr 2023 23:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682034425
