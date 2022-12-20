Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E99AE1878
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 17:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87261C433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 17:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671555687;
	bh=4Y05Alj0KLFo+wus/CZvDVP5zly255OR7yOTC+736hM=;
	h=To:Subject:From:Date:From;
	b=czTZDZxLz/ex84q+r1Z/9uKLmtqb4atDbZ4qDNs47jWa84gkSJHEBK1NqrBdfN3xB
	 s9ETnI+j34A+zSgw5uTGl6DfSHhvEfKhZ5hmiFyPrSWtUDV/VG9gH5iobut6lQ543f
	 9usnDSDtEGDP24MyP924x07aZAbHSiuic+v4LHmm6J6ZyJJlVu4WT+uGKNYC+q97IQ
	 eO9My7K8gv8MdyhgH0G0/tX+4S719eF2f8g9UhCTPG9J9AS7W0t+dyrHNu2RohIohe
	 s5uiJ/DG8dTzV/1bRAzigaC9fUuFV3dgEnBXqITR0DBRHgFGLG3XQWzIxHRSmdXd2H
	 7KTpLCU8xumOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6517CC4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 17:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167155568740.13222.13929308334164896865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5c6dfe08577b2c6c196ca6db2f2b68af391b99f74caaf0ef4755f099251df0f
Date: Tue, 20 Dec 2022 17:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671555687
