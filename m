Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6294F83A06
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 12:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713528623; cv=none; b=Dfpx6kmCR4zaGY8N/c8C2AQJdMWOcNEEIopkGiS3FUp3n5vgal2+Oys8Y0CaFC6DJMub/Kn4uWabF8mcZB0NUseVPmk4y9O0/LkLfAPKpzyo5ZMOrgpzcXyb7/qOdzXebuYeWgKbqTF8+4DID/w5CmMvZVnIRqqYTMc0JnVY9Ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713528623; c=relaxed/simple;
	bh=+JQP5oLGJ1+HTM1FbdMG+7lGjf2xnJhGvMpXiGqiGmA=;
	h=To:Subject:From:Message-Id:Date; b=DBS6TG5fB+nw3nqi1l6/nJZuQ83O/Vfma2iDllFI1OPT65XFYwydSYjY3AGuy85xVoE4i927I5X0XzxPR9od5VkvKWov/91gGHcbyahEMh1vQaxtnNpuso4D8FDrqqUPwhxqzWscn68QFkA6XBUWRsLXQIvXNkM/qIhCdCQ6v+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OPN1Iv5a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OPN1Iv5a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5667C072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 12:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713528622;
	bh=+JQP5oLGJ1+HTM1FbdMG+7lGjf2xnJhGvMpXiGqiGmA=;
	h=To:Subject:From:Date:From;
	b=OPN1Iv5aQFqYWnejxFSLelDZtJgyJ5cPzWPDKOSAR88MKPFtqurxdaCGL6ope1fPl
	 O3wulzoiwNjPJ9SBQ8W9KmufW5fieNGJ9pFh/1/Ck4pKkbm0govMu+O9lJcjXENhlJ
	 VJ1aGYteOg7vyFvaN0W4gVkaUKYGlPQFBZtRpw0RY7PXJcFTis5xm6cZdiXloiSpVZ
	 COC5nGANOP6G/nSVwU8sW6eYCYBsv8xBXPcrI7hIMAHzHaPb0DSE9r0YcGKz8bH0AO
	 ypv7YXInTxm6jehIXaW/NWUlY5PTvo6d7boNuwlq29tGp0JLM2IuH53LRiQ5SWjiLP
	 yYi23A0YhJ0kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB7D0C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 12:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171352862280.2530.17007253483001338353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e31654a90dc45f314772731a75ee7515962204d8a3fda83322a31229103e2563
Date: Fri, 19 Apr 2024 12:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713528622
