Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4687BD02
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 20:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87215C433EF
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 20:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673468487;
	bh=ttpTsef2v/lLOjCGT08p/V5pjgCkpVbX+hoahftSi3g=;
	h=To:Subject:From:Date:From;
	b=f4i2Z/rgfnYfmiADc7yl3zBzBku35dnHvy1K4NLGSOIAqWIpPtU/nOwv9qNqJQlKI
	 lTE1yfrMa0XcMH3Obxk5miM8tsLk2My2tAjaW9XzIUz1z4J+VyjVYXlO5OZBWBfoOE
	 qwXRdMwcvTBZKgr1lKRzO+NSmOvmcnuA7fz3qXVFSlsOo2U6+v39ZC6ZHaVT6ehZ1C
	 NSd0BrwQ2FIPOSqDU8ue9ho6ANozueHjx3elhSYvs6HQ7KYEk4r+YFzbS82JggT6nd
	 nIzen/OCVw7c2192O5PWU2ErVNPqFZcVq9C2zDr0ll7DI62GupEuIG8tBQlAqVZEh+
	 8eX1rP71XIgOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69DACC5479D
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 20:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167346848742.31182.3422387662556701428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64c4817d8f22c127f774635403d85e1e27d89fc2d14624219fffec23f29ce3a8
Date: Wed, 11 Jan 2023 20:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673468487
