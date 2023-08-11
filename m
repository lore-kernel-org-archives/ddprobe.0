Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3675256
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 08:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9377C433C7
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 08:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691741588;
	bh=2sp2/hnxN+BrRG99ApGY5IxnEPv/oVA/JUDBrnuIQzs=;
	h=To:Subject:From:Date:From;
	b=npfAhfYM05rsQ6M1krGm0u+0wB+zLQa7zVE8yZlUmSFsiSGMua4sZ45O30c1p5itU
	 ATFKr1f48FL0vKz+IcZ5sE+qvt2tiVIEjOXVmzgY3vi1rObMNIPwmUR6mFu5s6b4/7
	 OQxNuLXZjLdoxmrZql7Mo1zBKJBrO/0e3wOUVypJMW05jbW5+uHdO1EPqUDMFmN3TF
	 SmoUggcazwbFnXPLv0d8YBbwVgRyJhWIhOjxm+7W1Z6OkEVHqUi3VJfZqGa6mmQXNv
	 JluF7M09ldDBYsQsCjytdoLSzix+S5ffwzkpyBy6p/N/ZVK+jnuhXlKJnQlKm5ZEiI
	 xP5IKCaIU2KCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9557C0015E
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 08:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169174158868.4183.12636091609035286208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 224dca45c7677ed83c46b4457c4bfdc27d324d6d7ce6a4b083a4a4bac1195186
Date: Fri, 11 Aug 2023 08:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691741588
