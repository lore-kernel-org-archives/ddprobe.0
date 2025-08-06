Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C31F222575
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754488794; cv=none; b=TXJ667JoVIrmcf3Qx85PWQ3xAY/Hxhc/RCtX8YNg8mchC0sgwtVGXkjlOh45F/m2z39m6owPO5dOfx5pkfVtjMOyfdu9mreV33+lm/pgh5QZewBUso5HAfOwqiZBeZACMvsQuI9wMGDDpJCxIoHjtaJqZWusscsZLJxvNiRXCc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754488794; c=relaxed/simple;
	bh=TvRM7bjrOFIHvzBKsj4p5zPrNt4pefo1w90/T6tYLvY=;
	h=To:Subject:From:Message-Id:Date; b=cDl1MT94MygAhLWU8TZliV2rNTd5wmstsQvznk5nDeWplNbeSzu0Wqqmmca0zQS+X6p6NmlzBqWIQxr4bPd2rko8YE6n5DRoZtFl+Ir89qOGLmxSIfWlec0wHWfmqrUkUd+8G6DQj1UQCrphi0jCDyNFYctxDiqfjBzL8tGNYH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gDFpQSjF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gDFpQSjF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFA9C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754488793;
	bh=TvRM7bjrOFIHvzBKsj4p5zPrNt4pefo1w90/T6tYLvY=;
	h=To:Subject:From:Date:From;
	b=gDFpQSjFUYut2+lLLXYkVpLe8rihh6ofQEZelyR9Os1jPhWxsmms2s1c538/2pw/j
	 ZX0QsvYfQXgr5UpRnzZ3Nx5g8HUh2tOs3o7mItFMz9x7BLZ+Dk4KOZE041oSWwo7fx
	 zO0Gvk6xMBSQ77GxCJSsrAToT2MWB5EM65KpW8oV4GKp+iUTbpfq+G9KcRzaI9VwlH
	 k7vMDvLwXazNNWp7iRNNLx0ZLHxlHWETfLhC+5U0Rk4jJDUf0MXqRE6vCIGR7EZlmh
	 G6v3vp5j/pev0LTizpYs/kss2I7MVHlXHuUJTZ+/2I6yr3XnvW/zK97VGgqAa9+0n0
	 rMvZEcmWsQAPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA28C87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175448879357.4565.11844065565259111775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 314a83dd008fa5962ff719f7a47d763cbcef8bf59a0ae0767ae70a48e7ab03fe
Date: Wed, 06 Aug 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754488793
