Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C41F1754B
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742721595; cv=none; b=PBuxfbjwgpv3JnB+ABYte5VauQHZOJZHA+m6ER2VQ6iTD1D6/GkUKgytO9j5JGT+6HDbvTD97ypZ5QbpSJ424pFrenvgh6M/X1JOe+mgmOIoqxsTH0dN9c4lS7HqjFvki/Dzy4q0NrdIvn/Xb5ughz4Q4sAjxWONTNCxPP8Xm/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742721595; c=relaxed/simple;
	bh=q6U6nTA31tavebXX4miJrHUs7d0nMQefpfxCBO+r4A0=;
	h=To:Subject:From:Message-Id:Date; b=bxe2PbS6s1W23hOBg9YnrFufA5yvStbWqaCRZVYOqe4WcLgdqTqg3RzXsx3aCpcCa9WIQbCXw7MipPUan/C+Rj8CeEtRPlLvfLgacNjO+AZM9PwrkPR3gLB6TvemcYLAXOYi6ZctwsfwT5wPA4PdQgXpO7DIUgLvDC1h7LBFWYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GV7gsPZv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GV7gsPZv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDA56C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742721593;
	bh=q6U6nTA31tavebXX4miJrHUs7d0nMQefpfxCBO+r4A0=;
	h=To:Subject:From:Date:From;
	b=GV7gsPZvfuupOnHUiX6Uq2lhi1ZtU7PPIgtW35vWoGppZXB89l5Er0SPBnpFyDtl/
	 HInIpde1YoswMBwHBHrl/YnALEveZ2m8hcvKctPVtXTjN14W7KmXCGQYAE0Dm10KSJ
	 ZzYC8JHbtiaTOUBifudcARz/wyz9I+BTdMFGtwjeRVteDweHQSUlD8qA+IkhqtF/tl
	 agrn+rn5I0/ek/ljuVHNg80p1DZCBvQsRN+n/9n9NS4jo9TXGwWqjJiVyCeXmTYzYi
	 Wfp4RRGWM8Fue2ScxM1F5rUIQ8aUb6L98zx2Wv/K6QVa6jgVIfhzZ6+I8O+cqc2myE
	 j7EK4Pbz0CK3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2FE1C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174272159362.19886.11949497320360540541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66a0dbca48021e546d297c33e42533847493c473be3ba16d127210d41ac4642c
Date: Sun, 23 Mar 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742721593
