Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ADAF27720
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 15:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LJcnGrrX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2353C433C7
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 15:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696606628;
	bh=GaN8+17cDfRUNirRlYozUlHWB16kHKnFkAKzMCDivnE=;
	h=To:Subject:From:Date:From;
	b=LJcnGrrXw9kdYNsKsf/635FsmDd1KJjDWaGegLbt5E674au4RKxe9eU/1NcMutNaP
	 HcWmzeRhDIBoXh2o3Ho9wN3yX8uc4HRECqUVcdKZIZdS5iv+WCrBcBCKmYDaoEwxpt
	 SA4kMBIDMqpsVM01pJ7joCZmF64XqGkFnrIeDfDlPXsUlg5GVRbjZC/Ot3K9WkBhkX
	 mw7SfTPx/WiZInpS+3VyBk7sVrqv8eIXaqIyvArs8BqAh+rkHznAzHjnxKTRKCXc4w
	 gJ4NIGVkZ2sost8i/jAZNQuwotCyje6+hnZqlczbv1venDDUXm/uaYzrXFcbyNJR3/
	 E9iIwPz/1iEDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6F1EE81E0D
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 15:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169660662874.6005.11945064669735148020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 848166d1b6061995af3b798bb1a3660138541c67d1a966b8e9bd913f05667691
Date: Fri, 06 Oct 2023 15:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696606628
