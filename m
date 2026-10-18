Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2603803C6
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792329034; cv=none; b=D7hK1rCbh7YmXJ4+1O2qCAOVRbCjzTUnYSVtHI1OCXNClsc0CFaJPF7Yp4NyWtjfEHcOvo6gG7Huuh0rCaYDB5TWVJJn3B8quuhIZdkLyq+sQ2NYm9p85Z1zOM0fQsHRYNwk7Xp3q6O1JbC/NCV8s9T5IGb+8o8RZznPgrmfsy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792329034; c=relaxed/simple;
	bh=Ep4TIpDiPPd61p4BJKl2PM5Lr18AYcrFLgRzq+n1GCo=;
	h=To:Subject:From:Message-Id:Date; b=Ti4XCeWfGQxvWHBTFxdF+jpMwBx3AL1knzxfmO3k4ClZ48jSwij9LCxtQHEmHoqLKwBtQi78VY4mtyLI0RrJI+IaQfUzSQdJeGUaVDYk7zQTqM8oHfYF0Xm+z9RZlu0fgn6Y3/o8+nx2VHCFWY2PUtJecAEfzfvnKbqbjdtXI/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GZJKibQO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GZJKibQO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD300C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792329033;
	bh=Ep4TIpDiPPd61p4BJKl2PM5Lr18AYcrFLgRzq+n1GCo=;
	h=To:Subject:From:Date:From;
	b=GZJKibQOk7UxQiuafnLcnFnPWOyKVGD+hdyNwZ4/U35k26MzTNmNoiZsZ6zK+Dz9A
	 SKXuSqKWduMQFVwXqhJlfHEVRB+QwbhfijBTCiiuTVcwvZyGu8phphJkDgAI4b6Ymb
	 +jnErsdX5VGsOdotK+EBnXMOlmsze7BoQvKwWXtsAhNDXEhYpgX1K/9UV7jBybyRL1
	 BCaurVWoffzx3cS0+6bRaJpSQrAbFiBtplBvK0TjhdP38poVlQoEV9WhfkRvHGX7Yp
	 xKuUy3r/x7q22+FnuwTIigPYMSnK0hd5vjMngjnwneuyjdVjjLpLY+GL1DHaUn+44A
	 EE+BvoDGTW4Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E85CCF2C4
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179232903368.8706.7422957756854961234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecd44dc4b2d7bedba076cd8cb6d141942a17c3e97901063cbb4478420408e4c6
Date: Sun, 18 Oct 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792329033
