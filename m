Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C662748C
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 11:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dGqtqV2+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78D28C433C7
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 11:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702123096;
	bh=5m3eN+pynq4L5+1DpOo9WbR3nkUCQms1GcVfNrTEJVU=;
	h=To:Subject:From:Date:From;
	b=dGqtqV2+Suq0Ft+zSEXcsuNzedjVttEfE3OCIRda8qlCW+uyQvZIZjPUK7nPgpWB/
	 9vfv1dQnP99GWLm/Wa/yidrOgNCVjLPf29fbO9p8cb2TU0vqlXF0nNTqAMsdl/rH5P
	 wAorj26I8xeyBOHiwmg9pFtihQrlqwxhqcz+3dKfgwtQIPe2yg5Pca2GqxUV9yu61s
	 bq78/mug1qKIBEXo0p3SC3xhGoTDZKEqmDOa02vUtRWDHpuMhuOJg27sE+GAwOKpzz
	 JCRFNnPhU3O3xzXoaDGhtQK3vIoZ0PxarAVOHXK9QwSRtx1rFwyLxlvEEM5ZPZ5eaf
	 t+ox5smFw13QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E07EC4167B
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 11:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170212309637.1648.16149896600428455750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aadba1ebfb4aa392afdd1e8b5f29d7da5537768180e5fac9fd6e503463fcd2f2
Date: Sat, 09 Dec 2023 11:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702123096
