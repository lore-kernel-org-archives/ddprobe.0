Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB471E990E
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754029794; cv=none; b=lKJynokwFBD3N4IN+sYvZyJJCrz/qSSEzOuLb2fHE7T8gZ/k7hHmNJR2xQwKBrpkxreAZrrUc3BYNYME6mXeSXXbkYd6TqcZjZVQqceFBp2H14j4/+vNPiezTbbhbLFO74SQjd5h+7+f/lUdAuiLphDMI45ZvxJjWtLciPVZqFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754029794; c=relaxed/simple;
	bh=w7aKewV4WtBFtdQKka+yg/5atQ/8fg0v+vldhJn8MdQ=;
	h=To:Subject:From:Message-Id:Date; b=X+kXuKOzgeHiXnegtaYb/DlHrygsfb3VQsiMe4qTfa8f/Jdd+2JTo3gqdHkUbXZizaUweR5GNn+JFfOezArRUmcYF/UtjGiUobgajjyb8Jp+XtzFclRZXvEZLR6+w3fVf7ey5wCfv5x1qmYdXcSjwxZoen/SS7/O1InXP6z8sdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kEKY5HSP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kEKY5HSP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26E9C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754029793;
	bh=w7aKewV4WtBFtdQKka+yg/5atQ/8fg0v+vldhJn8MdQ=;
	h=To:Subject:From:Date:From;
	b=kEKY5HSPwf8zRJpEAC8qYkdT1aisHniJanpFXh5pAuxOCvxqr9TE//Zq19uWi2cDc
	 y6hoA9g/j8CqX9xXCThEAPLLBpSLppiVWWdOXIcmATMV8fvP/A70FnyTeDR2tOvfRI
	 7sgL/niaoL2qubY/p3NxQo7vEs5patb8B9Di5j0FiZZ8tmVaJeBYxu2MdVOJCcs6DA
	 3Key8XSNqeZpOlOXW4MtYsadTttp//CfOyz+tWz9sR/rD0fw5IhXXDj3KEEEOxJ8VN
	 6fJJ/Ij6Qu0DiwJAfC/9XAUFrb70woie8tWpXnDMAPZc8WhGdCvwWHt+NVR0FflwW+
	 T5Cbbt0klU3yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90104C87FD2
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175402979358.22737.12403228025295952493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c11899bdfe30649854bd0f7c748182ae4be8fe05316639e4752a5903fa205902
Date: Fri, 01 Aug 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754029793
