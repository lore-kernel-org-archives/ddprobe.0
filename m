Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3806E1F7575
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 02:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784081914; cv=none; b=VbQsfSTgj3p2ZE/WoP3iRXi5b18XVcIn6TcAMeAWbn+Qwjqn49hQmxNC34imZrYm4auqHvav+ZiW0sQG5QO2Scqutkgyol7J0s6YCS50ISBw2Qk5gc3Ko3wUt1YRVD/OYE1gHd6zb3Agbhj0p3J2utlivzgvx6ZWsCEqI4bXJ/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784081914; c=relaxed/simple;
	bh=CQZbcrcul8P4NTodNqNCaLJY+2tYo5W78JF8cC4LzC0=;
	h=To:Subject:From:Message-Id:Date; b=qWZ0fCzKnaT/TaNIvXyQ5pSu4LIq/PNn6D92Ge7cigJnJKlHtB0TQ74mgvajLWf+Je5/KSY9vZ5lFzhsTqMHbJ7fzfP81Sx1Vm65qJ64UgIy6U/Z2Gkfo/RyHKlLq74jUg18jC3+8bS/nN9ipctsYF35H1c91v/CXAN0SnEfivU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L3hokXLJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L3hokXLJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA8F4C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 02:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784081913;
	bh=CQZbcrcul8P4NTodNqNCaLJY+2tYo5W78JF8cC4LzC0=;
	h=To:Subject:From:Date:From;
	b=L3hokXLJ0r5a2N5MjoO+uAE8gTyYc1QPpi55OU8euraSfrhoIy9v4RYkT+BRTUAZb
	 skeBIjTXAIgE/UmEtVUJTR1q6xfCOpjS/Xk96JuX26v+dygHCqaOaQA/V0oiZ6yZ9J
	 ZMXDVYMb5el2X+FyTGheHmUblwBF0UhzHnbT23/ib3cAJX8XXt9wRV5QlNN/SoBrkl
	 tTUV98gKXtKTeBpJG5UATWa7LuJavXbYqEk7uJl7UUCLIGTuUREk4Bw+cPjjV+jGS3
	 xxA+OlMyfL+/6pdhPWBYecuN3+qowItdcx5oxuUOsh5CeULGIFxoE1R7XYSezWSYPP
	 NGATla1lEU+wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E3AC44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 02:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178408191368.26324.16451176746909220018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f788747b69495de1162f86df87c766bfcaf91159947901b1664b4a9ed35c16d0
Date: Wed, 15 Jul 2026 02:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784081913
