Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355D42236E8
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 12:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776516454; cv=none; b=A5xiDPZMrhBq1i0NmZ86/11hW7Xec5qWuMAxeSDFyjK/XydZmf9RB8jIXQhLmwHehgyQsCSNZ/w/M8BTptk6F3TkiavXosvQ19F108mM58VWYiCS+vaq80HoENNoUhgkfPy10C7C1lbGiWWBOh6GnvUf0AALNn1QFrxm03KzJxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776516454; c=relaxed/simple;
	bh=PBfHt43b7NTKZRxw8JvHyO4w+zb68ZFtneLQkifGyUU=;
	h=To:Subject:From:Message-Id:Date; b=bRe5UQh+zdoAa4oDTzENhQhQFdHRy5b4U03nYTW8OGGLDMrKtwaHvmf1z1BqaKnYfeKhNIXVXWBiP39XtmCEZe8EyHvelIQKX1lwZSyi0W8CjstHERG9oj9U0HHjV5d1dxAnQyqhDmfPz4y3J9+9vR/aiJxTWhuYaoswHrv80Gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mSnZ5nVS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mSnZ5nVS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1C98C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 12:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776516453;
	bh=PBfHt43b7NTKZRxw8JvHyO4w+zb68ZFtneLQkifGyUU=;
	h=To:Subject:From:Date:From;
	b=mSnZ5nVS4zz/315zhJt3hQmd3Frz0lMqacVlQDt6qk4vvqJLpz5uIAeCj3FmBwt/w
	 IDSEwaj9pOBi0PPhKx+eOXhLFS+cc/XNQzpYoPvgoLzAtpnxymMZdLKvqomsVXfD2w
	 O0JpVQAHxuBSnuaKauOpG03TBkJFDmiGHsQz5/INElm+LeqlrMOLCwQ3c825SAC+nk
	 uQ49X+hkYs+UyV5ccp0G7qSmihmty1sShyF8cef9bsrC4KLeA40UF04H1dB2oWAIui
	 B1Lbd8xOLWv8kyxsCGwwm1H4pslbGjckaaLhBmVwEvko/aCy+jUSBhkB4k8vGhDK7R
	 ThG/8I9F7582A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9E6F99C73
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 12:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177651645368.15372.7389324408198386456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4efda41ac173a7dff438857d66d2f9c80e6a1a7190480475b47c1b7a653f2e0
Date: Sat, 18 Apr 2026 12:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776516453
