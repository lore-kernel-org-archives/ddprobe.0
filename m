Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A5CC23AF
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 18:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0A87C433D2
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 18:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677696365;
	bh=+3OxTd9uCi+in23gyfvkk1beZ6XGztAko1Sg8Kz4am8=;
	h=To:Subject:From:Date:From;
	b=eQtpcYY1njyMo3481FG8nkpzwkcmZPk+l6Wp/+T3hg8M9eYn5UBjxRq1VhUNjkoNI
	 PyaQ4l3Z1dPuxaCHAJ4qyxH9bZsCHM1PtmGlnISa0s8KBIj/GU9Vmj3YUzyq3tw+Gb
	 2jkB0XAZhbo1R+yagnR4seBoZZcTViCx0MqdNfwT5k/HCpCbfqvdM1UEnKlTBMZtsm
	 gfbtXN0ran60ozde7wdsGuWYjrIMrHVFSGy+otx4+8RgYdrC6v2mVK1dXC+9mFO40w
	 pbJGxv7u6qeNkGSkbd02LgrOY4MXTKCD3lqupSVzPBsH6LllMVpYY1We/afr6hiZ+Z
	 JLlLy/WCpfGXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C215DC6FA9D
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 18:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167769636578.26583.12958954591558575971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8074bfc4e2f1ca718f5c7977be9e6da444cadb1b5fe58650b74cd81a7ed5e702
Date: Wed, 01 Mar 2023 18:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677696365
