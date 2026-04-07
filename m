Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C05238AC93
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 09:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775554534; cv=none; b=AttQGu+MrhYtk7lZ+1WaCAJq81kZude1vqz+oYNnCROfLYNRywpZlC/R1Gc7Hd6I291/x5yRmxOFnhCUC9Podg/beISqNtB9mqDBh28Dssjci8a1dwWN7VhvyRMHuvZdXinkRhNzUlIR8d/1zsFKAraCDwu3QFfmelyC3ax62GE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775554534; c=relaxed/simple;
	bh=xY5S9HCuflsburH2ANU0KNbAygzFOOQuzVevuhLB3WI=;
	h=To:Subject:From:Message-Id:Date; b=lM+5+Jdj2uRUhesRWupS8qafqsAt91FcJVlwQb9Tvhu66M/eQ6D3xZndno+TZuEWadIGgaYh5oPVfx2lRBJtiqDa3DS/MgmH3rfWadrKsyq1i7K3cauXfuy+MBFOThkwRky4iShba5I9nXik7DVd6MnR1MpR5iDrtJNk+zjQ5tM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rGU4fy+r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rGU4fy+r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF0A2C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 09:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775554533;
	bh=xY5S9HCuflsburH2ANU0KNbAygzFOOQuzVevuhLB3WI=;
	h=To:Subject:From:Date:From;
	b=rGU4fy+rz483DHgib6FOcwMLOBaUuVyjR6tV9qGgW5BzlLtcpyQIiP0Wc9+ZX7dBo
	 I4QOQg1bOC3HC5NOi2L32AykCIAtujCP+d6oxuHOFaSQIaEMZXzzusd6MbB3CXgBLG
	 Moi7h97wF5L54biqAMIw0rTO+Bl2bKOGfLp3NoJOWbzHKTixg1eZJiYLq6rhsUbne2
	 tsQE0PYc2XJCw01QYh07HvfztRm+SmCvGPS2W8PUvQJpaOH7hsCzS0khSwybcHgrBg
	 uDgabwwHYXsEQ27rYre/Q83NhD5tdjvwRCv02r+hRWtIuLcIZngSxJA4keXRYt+uY6
	 LAylRFu+mMt/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACAFDEDB7D4
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 09:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177555453369.18958.413562204018444438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7983013afe310d98d513874b8997ab353286509389db1cd34f2833659c1b0fe
Date: Tue, 07 Apr 2026 09:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775554533
