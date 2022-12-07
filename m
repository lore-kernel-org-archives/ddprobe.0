Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1A99374
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 03:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E3E0C433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 03:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670383254;
	bh=pyeZ5Who+Pk/NeygH5eRQKz9NftT3GuawnGtqpoqtYY=;
	h=To:Subject:From:Date:From;
	b=pKeQR+jGMOcTLm1v0h1MXQAAHvchUi6Ll3HfXUw+ootv9NcHdJ4dxUZkge9i8RPeZ
	 3QUnIOpycScPMXbBTyJKygdpoZOsQyITpPBIcdFF49AwPZvfyrrb7CWBoOGYgBdMrp
	 rsrl/DLV+ydXoviykxN4XQi/qBNMxIWKu/iLmjI82MK+KJdkLQqMdKUMDAPXxaK7YN
	 JYfkw+H7eOD0XYMdjqqhyOLZhtCrzwC0VGjH8x0CbpYNOKDSWlIqCFdlN0OaQKefKO
	 YGw5neWhlDHUnJrZ6rzPu0thbiGrb5LeikR85CUhDNkZCdZyGPm3tubVNssxv3GpUY
	 5DX+QLaVXArgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5377FC352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 03:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167038325433.23040.12308587567319978797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57113201e46d912eeba5cf18efe33c7fc914765192d7f24e337cdfa54d5cf1a8
Date: Wed, 07 Dec 2022 03:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670383254
