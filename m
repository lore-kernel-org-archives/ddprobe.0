Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36FB71FB5
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 07:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7D75C433EF
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 07:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677052265;
	bh=3k3d50S6/ueDhRrMTRKlo9LDqxWqoyPgsJz/5XKOGok=;
	h=To:Subject:From:Date:From;
	b=HBIGVA2ij1lrXJRKvoaKgU55I7XazYVOnBLhPjGyKcSnzSEPK/+Q8aLc/3ebemtpi
	 DLbC5ViKB9dk+R/m7PmZCGTNaqpMjDC7yd1lf5SUKMKbsW4hfAm6T4y3T4iaz6I6wS
	 +Dlw8/ydC5ZvdzhMN1IQWbV4cYdzfDoFDxGA98hjGcAshQ12kO8MyVYD2fvYZOubpO
	 GPlXNygzE7ji1HTjKwXqelTYwJFiTpo7NHH1PfDc8RyQAM6mLxjYzGEr1FOiDufl8W
	 rUrVGRc7dWZhINxuh9ZbXTyaaz8FfzqdrSwBvCJ/CX3t+8RlmV/VxcmG2P+h62XI9j
	 /1LCDl6ynUQ9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB862C64EC4
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 07:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167705226575.17062.422340566282401075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6b0e534f0a02351b444e12235b42efde99d58ca9028314f40e76663616e7e30
Date: Wed, 22 Feb 2023 07:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677052265
