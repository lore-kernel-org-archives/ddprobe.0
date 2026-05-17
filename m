Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A223B18A
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778991034; cv=none; b=E/uK0c0Hjoxi5cPXxzcQMa5lIGLgtSgno94AwqjgUbDztcRXc3h1myw/yxDHT9l8HOdsEUoD1WrmFH2KR6XGllcaERFTT7DBL2Yd9sK0h4CJ/hWOvr/hIa/cHxvI1yS8JaDV8dxFOZZ4Idosy5FfvLqBFWtJIrOCVlDUGp0Ff6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778991034; c=relaxed/simple;
	bh=9Nu1U+K4xf5tA57cn0Y2KlVf/8HGoafvBGXUtUK4Q9Y=;
	h=To:Subject:From:Message-Id:Date; b=YfyO4i2JzpDkcjrZCrssb9h6JjhdDOggIMte6yRAicKco2aKEx6BvS6L81Nukr7ibeqUeFrWGWSaAFNy7haE4v8g4MkDwa5NBKlpSmNGJ1ySc9qLLxYtIyBamA8XLHXAUfQJtF4dM4tqHze82OtWm329LVtDdlPW+I1q08RtsuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qKvHkDcn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qKvHkDcn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6B88C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778991033;
	bh=9Nu1U+K4xf5tA57cn0Y2KlVf/8HGoafvBGXUtUK4Q9Y=;
	h=To:Subject:From:Date:From;
	b=qKvHkDcnTLHSAWnsie4fDqvalj3TT5cIVbGgT2aCp7sJ1b3Zo8XZ0IP8z1D6nYAl1
	 om6lKBS4JYpBkRqIps+NIHWfwfNptfn6BPKWnSSkYQRn1vHIB5XmVNjsJrrgLsXvyP
	 YHV3H6wwWoTFWXF0UtEaIr4icJRX38lanNIP80CXM61lHV5J8txY1P/BHBp3mHKltx
	 SKce+mp3WD6O8YFsO63SOLgfQCTgmW2Q+m0XWuF4qu3aO55TAXhrTVOLhkoM/z0wIQ
	 LOc7I04vvzc1+5IgLHqgROhKvWUK8FkfGdYDLreQXabBFvKEQB9HeLQuRg+2UPu9X4
	 bs1Xb/TdVZ3rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C50E2CD4F3C
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177899103377.21598.6020482679145036083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60ad8d4e6c05e0de492662188dc587f3f5094e58eaa0c79acf0d3922c342a467
Date: Sun, 17 May 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778991033
