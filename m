Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7A5362136
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 20:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776027454; cv=none; b=YsHdIqocddHw5chTNyrtOydg9F4plpF5H4mA5IxfYTwxoiZYIs7s7ioege7DZjcTkbJ7B1VOlmOy0QgksJqkP8yiEwIgP41MOk3ezMKyTbr7zvkxPvD922p0c1aYjlvqubIztW02bqXNh4U+lNefDpYrh4u4A3YXx7kkAyzze5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776027454; c=relaxed/simple;
	bh=5BTakGITZs+966owI3TxU3Xd1Cz6IKD1Tk3ItUccC+Y=;
	h=To:Subject:From:Message-Id:Date; b=o/euRctVC91bP3CQUa++bnx458r18HtfmjEure+6Cvknc8g2LghzJjAf/Q82iorElkPUFIvI1o3zfFoISXDLs3spdKULbU2es7RR6VnIQD4udCC0Bb7jpz6kj5XFP8q+4xRCpJQ8YYswhlI6v/2pWGDhN/fWkyjdL5aFJhkY+HE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MYEjiPS0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MYEjiPS0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEF15C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 20:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776027453;
	bh=5BTakGITZs+966owI3TxU3Xd1Cz6IKD1Tk3ItUccC+Y=;
	h=To:Subject:From:Date:From;
	b=MYEjiPS0IG9V8vnYZDPonvqX3obliHcK3k6YNNyXdN/VMOBKX6Vvl46a3gtgrZbrU
	 Yd1wNXZYqGEtU2KUwEtpqOJ6wGXsw61xqRMbI2tZfVJfVVoR1RObDIEVihJt8FnOwy
	 9oc5YPc4TRhIppFMrn/evY7wSwmqZ2PMNZ5BKigIgQy8ruwQ+L5MYwwCNgwSK1tyKd
	 2N5Xdri+4vP5Nj7OO7gJGHpk6okLdTYvYfIES+78S6oetSaBlhlx3Ij4xU36KHblUw
	 BGJANXEYghA0V3hi+x+ECkA03QUdHyYUR58Gqpohm7BnX6JyyPPc4Vx3dxoLncaSKu
	 GXVPT5aH+aBfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0A0E93802
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 20:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177602745368.24368.11630026970773535575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8800792f473e2a2e870db93a312b00f3367314c67a778cfcd637563ce4a8dbf
Date: Sun, 12 Apr 2026 20:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776027453
