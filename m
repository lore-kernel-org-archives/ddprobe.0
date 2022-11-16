Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5BC17C
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 04:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7753EC433C1
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 04:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668571254;
	bh=6vrfgoYkbivSqOAXf/RhHowoPZk+eFqH4JfeN7Ms1L4=;
	h=To:Subject:From:Date:From;
	b=mmxrjAc6jHIm0ttdf46ZY7pRkDziX4I9MZQGRG17ALOPkQPv4+ukxF0C9VtY3/vgw
	 H3FVj21spnhfOyv/ijXP2BiH0JUzVapCWIU8d3aszt+VBA1Zi7DxM5TNHjCVfzc1Yg
	 5cZTo1yAoC8mdcAtuLD7YEH5nV4j2r1sqOrrPj9ftMx/8OIzpYaUdo/p1TgfuYeCxz
	 V22t8BUf5Q3MDeoALSjTRRQJyQyO+3PLn6FDSDZ+UKLYMIEJfB65Njq+iwjR7emnF9
	 7zDdXxV0rwYyHxQypE9WqlkfPbNriPM4p3smB/nfy2/Sijqz48pqza1VPfJ0a5BbE+
	 v+p5vexIiF6Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D4B6C4332F
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 04:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166857125437.29609.16296579792411060214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5352f514c3683f566ec3364125c70646554f8a00613137d829fe9d27cf5896b
Date: Wed, 16 Nov 2022 04:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668571254
