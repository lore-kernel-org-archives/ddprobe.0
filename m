Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70E89D2F0
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 14:04:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC9B9C433C7
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 14:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693922648;
	bh=GYwJOJvN6tcL1ccDJvfEr1lu1g7N32y9thMtklqnmCI=;
	h=To:Subject:From:Date:From;
	b=N9HepErkUH2flOxqe8KPlGjxZdmTGg1B8grRbMYexNR4anegNEUEd2jY7hzg8p1In
	 acanqe5xrscPvoksTC2t2l86wMpBxdLuxeH4zq8Vt3q6E3fJJ3Du22h83YNbxUimsm
	 0MBrI9YPByGnyzERZADn0a5i9QSthVv001Ds1GqiOj9UL9fLN3tf8IDcoRZ6spVOQk
	 bpLImwgi7WpLKe79H9uZFdKHJvv6Vu6O4M0FCHfy8THr62F7e8L0NRvM+GuCYPmzvN
	 2I3/wTZjp5wHcV4E6fYNtdmA5Gva97RafsP+UTdjKWvI+a64ttVcC35cvBARk2v+WO
	 mcwwKVKRGe2ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B021CC83F2C
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 14:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169392264869.29747.10651441149318678428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41530f600543da4b0799cf802f495e03d96ae0d87e1b29e118ac22990e5ea6dc
Date: Tue, 05 Sep 2023 14:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693922648
