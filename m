Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFF1517E8
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 03:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82614C433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 03:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671852087;
	bh=dd/9nB/1MQZVPFOtHAGbwK0C93EgHfxv40jiAEGs4tY=;
	h=To:Subject:From:Date:From;
	b=JFbhU2jvQl/R65TXWs4QhIx9GddIOF9xlipTpmf5xj92r41LV/A16FwVPk2+OP1fe
	 cKbgZ+nqIPs2X8OQo89y6Vtiyej26vJ3V7KHlP8YzhYK7/4G2mMutm2bfYYecVEJuE
	 lO6C+4NkVuCKj/FdqX5Jf0z/k5G8dWVN3OossdKB5Py/viS1atkSwGz05xiFMVyORn
	 MyrMJbxQp4OKN/RVj5+r0aVEi+nrt7jrSwHHUe43tKGDdTfhJeJZ4qcUlRxCOcs4D7
	 pbF2/WnQe/t2y1pzyUpj3rvts1vY1UC3ZsZ5ohPuicFTHEkVPRgp1zIOcnrrKjheo0
	 9ZcexKdx3L4nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 678D2C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 03:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167185208738.13561.3990777726701099984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07c1c668f5ecb646a8db31fa203cbba24808b1e4b0ad14cd5e49866ff14c04e5
Date: Sat, 24 Dec 2022 03:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671852087
