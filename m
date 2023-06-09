Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F26C408F8
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 22:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF37EC433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 22:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686351485;
	bh=jURYsyFcHVy9OCbRoD8oXQ6GpeBvMJJdQtq/Eipw060=;
	h=To:Subject:From:Date:From;
	b=nAUWPjvDHU+zmJhusACJ8v+9b+cEwFvxISh/daCgqZWJTbGZ9ogstRxgqUJw7fQ9u
	 DEsy4IldJPnyM0zgchZNz5e0mujza13lc42ooup3ELAPb6Zo/XSwHPmw6lq1PiC+wE
	 mZhqr5n7wVmGIkslwZxfcU+6ckDRbvf5S2KCqpBNluLPWHQOTeDe91CWgPhqZBxnuC
	 xNoQZ/j9wgw6euil5n+lwW+RMA+LQL/0T81vMSSDgDxrm1LkCT2Q3EKGyOxaCooVUx
	 IizzlXW/LqPzl8wgc00GEO0PB/u3OvkQKmlkR7a5Muzg281Xb0T6H3XXStX5uwxZ4N
	 VJe66QbZCXA5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDD5EC7EE25
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 22:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168635148576.32743.12914052894162372713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f2b9e6ce61d334eb0cbe5b6c367b9b19e780136b4fd00c60362f13e3467c9e0
Date: Fri, 09 Jun 2023 22:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686351485
