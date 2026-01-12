Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D140C27B352
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768214033; cv=none; b=Jmt6owGLorncNJTexKI884w9ZMDni1SRHtuZm34cr3WA2uV9HKITnJYoHFwbpArxhyOMnqG8KcECfUMmIlm9x8Gs+ZgOE0EumqMjHB2b6JEGMzHtQQSIwn2PiQo4Bw2Uuubut5nR1oQpOeTvvet/xoOU+oagM/zeb5jEloZybM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768214033; c=relaxed/simple;
	bh=qoOw+cA74WnUKUpYfdhto4Nhv8pGOMud+zZRqw/u+5k=;
	h=To:Subject:From:Message-Id:Date; b=dzy4c7J0+9zoCbgJMbwgFww6msSsCY9CZp3mZ55xM8VDFChc/H4sA7vE62Ej+7+tmaGgI4PZmQaiNUNyefYQetBSXv4Zp7iqj1FcUh+4/dfYOlqAnE624OlvWIAokSkdLx+bY+FPkSm0HbYTtm+p1dJznaxE3CodSBtWJEzCU/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qd3BKeyy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qd3BKeyy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A320BC19422
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768214033;
	bh=qoOw+cA74WnUKUpYfdhto4Nhv8pGOMud+zZRqw/u+5k=;
	h=To:Subject:From:Date:From;
	b=qd3BKeyyKICG227vXjbgVBuO8hkMVY5wTqC75JRhpPGAgPZ2WVr4tmWGBjsoAol31
	 0Debh4PKQs9L8UPidquCKZTLh+ldHKzSnX66YAx0tECukyTycFunQQogRq/HyEtVVK
	 9yp02NCPmBQYMcUsEXncJZO9d3nwkL7RH7hNPXIlpuAB9J0CrPSTdlVj62os6f3xYT
	 UcIkAH7H3PNmz+1xQ0Zqjj5GVJ0PruG6jBkjHhXIDfbMDArqshfSuiKNrpPpFkcJUN
	 Q2N1buf2+C+Ratywg4sriFwVkQ7qGesxaOimXiYx26KjTwuTb+rsEfPmD7rI+7xGG+
	 aRjgNIjSbgAYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939F7C9EC68
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176821403359.26264.11686344671626609879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3431070dd2b01b82593eaa452e4d7a5d3e6b95406327dc030bdf41aaf3eeec24
Date: Mon, 12 Jan 2026 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768214033
