Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CB645661
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 11:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9477C433D2
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 11:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681989365;
	bh=tPDN4jouu33JGOkrtyg7yhLc/if6uXL127RdqAqeTmk=;
	h=To:Subject:From:Date:From;
	b=UPY0G47kDqmBZW2ev8jOrQKJtDQW3SUp66J6oUNdVmgqO51FMmhfCJYrZvLoLW6Cj
	 Ek9afKDve+CgDli7VdJKUsIdWqdgGGqeI5e2OK4POryr3Pqne3jkiMs7+Gjp5MwS/h
	 wF1BM1+LzCePVPlMJINm4YRizEdh+Sjnh7TeTSVnNL0+F2mMDzXJPkwXeLNZTViSBQ
	 MdsdU7ehpUmu/wXeHkV5LEu/rSC04TH5wyozLSkn94xCb1qavstD/ofXFPyI8JtDjY
	 JJJvAihfNAHAYXTFC6rARp7ue/6sWtLPgJOlzKabKMQ4MwBQaawNsVbsG+JFBmpxjt
	 Hhpju56BTMpiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9CC3C77B73
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 11:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168198936581.7408.4192496666400794303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92f426fc854c9045662959993e26f08080657e80cf087c95b3ebc9971d805e4e
Date: Thu, 20 Apr 2023 11:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681989365
