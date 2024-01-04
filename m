Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EDF72C190
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 19:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g3Mpju/0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FF64C433C8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 19:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704396496;
	bh=N0wnhKexgv8eSp+BB96FztkP16YBZc2Mkd16zB3pRP4=;
	h=To:Subject:From:Date:From;
	b=g3Mpju/0XKR/Jebpwif3xPqr3eD+quO6mPV+3EivDixg3haRPXjkT8SU5pHf7UDkx
	 7DfXblFbz0p1J3ZfmLqBA3DABcWUnLOKBNMtrEn/R6y2aY3t7CL2KhwEsOssxziEo4
	 cGMOz6Ym7NFncdQ6WAfDDW5PCQXlKfAJtElnPbuCEZPl8v6YLNXoEVH/acKPaFUiaw
	 PnrAEy1dEq2as124wRfXSJBEMxqHTe6zYs/U0GuY9iuQuavl3WqF7jMWSwXdTDgWU9
	 aO0v7jcLkB1oAHpTctbRdrzgrmSScejwKaZOjL8vKRyf5L2SSNcGX8/+i8JlKUR1rb
	 AJo4r1Hn4pWiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C6E1C47077
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 19:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170439649643.31457.15683310424791030537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cacf1e0df4174c5f5d98b7e372f815fc6df5780284a41a43e10fec56114889d
Date: Thu, 04 Jan 2024 19:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704396496
