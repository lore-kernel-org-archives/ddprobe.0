Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD03833C1
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 20:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69CA8C433D6
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 20:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669236654;
	bh=n3io7HYaLXSQsuqYvs3zgwpscB3k2tOImijq94o9htg=;
	h=To:Subject:From:Date:From;
	b=lysn14liJd8v8kmPPUUw3KCKR9z/cr3XXh5rw/hQvlW23NmdQIdgbDxGEXes2veVS
	 pj1oEY/bqxvnwQasixUe56y1rkcOBo2E8ZAl7tiY3XxlTPxwW1Wz5K3YvfvusXW0tF
	 DPlcCL6FAwe9XcvFyiA6AC9L4u1QrlUH0EqA4ce8wolRVofKICQ/T1zi4D55aHn08K
	 J/+3Uvr0oJT6xfbVncL/uwrGzUtGLjNpWCll98Fn7vO/X62H89wJrFKUkyIvLnK6Uc
	 JbM3BAGkOP8/xk8X/8aV7CVtv/By1bNIsOUYIpHCwj9rBMsObhISlrLziomXco5q7D
	 tWRD2K7iOP7sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53427C4332F
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 20:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166923665433.23205.12380572482434924027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ce24f84e881bdc99c9af2d5acadeef8cc32429ad35dbb57b65e3ea6db137b9d
Date: Wed, 23 Nov 2022 20:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669236654
