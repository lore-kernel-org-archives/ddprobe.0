Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE4A199230
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769867034; cv=none; b=MMqtxgvdO1Z06eM8RQ2y3DsTjGSm6b+FmwaNPis42KtUw3UjmsrFJrEae4QkkEYcFnrGsYUH0gpjrs34SNFdEycb7HhjJ+lS1kdN0MKMyePNKs8SVQ8BK3ULZSAjlPLz4nlIvLNrj8heBnjyYyVSl0amkJamu3YGB3Bfg+ZI9B8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769867034; c=relaxed/simple;
	bh=TplcQzABx+gKSnq+wUspZLR/sssA/ycznWpmAdyNSr4=;
	h=To:Subject:From:Message-Id:Date; b=r8gHp66EUCuDVGME7Mc3lrVUmJuIAXMB2lw9I5Xmu6PLMSpWDlluKH3isgYpZ5wtHEZ3MzOVeCUiL1PjyX+mHARb7WALlUeDdl2veNOh9QMnnY/sJMYC7xqS97xOraLoRiS9atvlfwWcM5+24p29sJiXSQx3ZiIPR2d/3n8w6iQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kZzwXqlF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kZzwXqlF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2752C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769867033;
	bh=TplcQzABx+gKSnq+wUspZLR/sssA/ycznWpmAdyNSr4=;
	h=To:Subject:From:Date:From;
	b=kZzwXqlFvmtb1PP4gvGhh2X+hXjYyFnlGp2iTzAcpCNiBLN7n6UZ42JTqnrtXveiZ
	 PIVvfBHyQWfYjd3pJRVK4JlNsWPge570Bz0rjTIMLlrnuJwjTfQp75/U6vGy7PnxkI
	 kaXc4xeK2cIj9gedviZyL77BVJQsEY1PjZJbthNrqStLVCjYdS2akoBmLqPWIBdCZ6
	 NBJqYn9c6bGRi9GmWKEL/VG6dCNC6Gwqf7U1rPVFU+UeMA+Lx9g4sq7X9SoRJj5hZN
	 LVZbZHJR0+3KPhwjsDYuHKTMeRITaM23bH5M8ckC7WDg5+kJA5r5Y4cISkdSrcYrtn
	 hBoYZptkcJcxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A05D79767
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176986703358.4441.12041286348112395348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f3bc317ed87484e2b939f89b43a8f7a315b4323a623d63e74191dcc2a232388
Date: Sat, 31 Jan 2026 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769867033
