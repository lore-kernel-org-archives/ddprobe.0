Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7BBEA4
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 06:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF826C4339B
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 06:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674541385;
	bh=+KRlfr3An9STv9yPm+R8mkTHzG6raLup6i3RHrnsq9E=;
	h=To:Subject:From:Date:From;
	b=MuDoEADBd0ejorg/RVxTUVI4nF6JtDaGzy2Lf0Ox9YzSvictxr59W/2tvkfD42tql
	 35f9aWVxHXcVbg+NeNyUGfPMhNN8ygrt55pW89HWAWG9c0xkiwrdsTtgZ/6Ntr9oXN
	 UfcCvrBCpW/+u9sNRzUM0L0FJgVnSw3qbQL0fha/jR9DruJFLlnfzCMbm6VdurMogS
	 r18d4v7gtBRCA3h1pkyMxUPotmB/JyucMhnu4ydbS8KRUcuAcnndtR0JBLfkyk19wp
	 OCdqNQJG1WO67jkVtfc4Rj1XfMJeX4cWgeGbPoh/9pcfNXV48Ug8F44El0r6/UkkNl
	 O1cS1rSWfwk4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5745C25B4E
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 06:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167454138578.3880.12954579446815957765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e37b3f9d48e0b17b5a9a4baf5960e823ecfd37e66f6a41dd2d9eeaf09d13fa89
Date: Tue, 24 Jan 2023 06:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674541385
