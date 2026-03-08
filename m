Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16B002248B3
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 08:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772958294; cv=none; b=DVtrNL1xyNk8VX/Kf3D/aQIXXCKrlrRAOJG5Ab0GiT4qVWDaTMwCQ21eLjR1Eb6B94HXLTqDMjqWlSUQ93ZsPBVZoSi6/XnPseX8/JHDOjKpXwtvSVqFechYtU8qZ9MZGy5nWh5jmKNRHxqfHDqKuXJgYxaRJ1MP726I5ZoZ8SY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772958294; c=relaxed/simple;
	bh=3Xmg7plWKYRaTopQbG9Nxpj4iV/qOuop7Vej//LC5uU=;
	h=To:Subject:From:Message-Id:Date; b=nfJXACemFgFOQmJmzjvH0t4AQYF4UxvQXzngNPZjYuLApju3Fi6TTXYG9uB1Xqe8/rMAG6dmlbqu5JJ7YQ2Z+ionVq2c1ulD7NtBsXHMm9sE4hhQnTQs40nNloNyqiDgWDUjUfwc/BazsyrQ2/X8b9KrEYuX1qnxV+k7ZOtY1Ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YAi6Di8n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YAi6Di8n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A665CC116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 08:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772958293;
	bh=3Xmg7plWKYRaTopQbG9Nxpj4iV/qOuop7Vej//LC5uU=;
	h=To:Subject:From:Date:From;
	b=YAi6Di8nKQAInCxfMnLQgaselMLagNHhWsayUQTfiouvTf5R6ywQoTQGJfqXd5aGz
	 OnkA33n5kXpdPnl9Iq6Z2bbnkFrTrPGBdOM4bGhzvFBAqDjyuGsClQMKWhEwwBDSem
	 G7g7J4Zue9siKmyp4jrFaWoBSFsfVX63t5m2yMKRKcZWP1Hjks7YS0p8uumK1yoP9k
	 ErSmjd6072qsJ0EzLwcDuksW4AMsNh6UoN0sQTCIZ01qLzF2cYb3GNyIMzSN7pGuPY
	 ++WrBvFtoI94UT72sLbDgHr8UhudVAXBvMKExqslvxItvyth203cqx200jyYY2/X0w
	 u6KPxGp/sWweQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928F9F55132
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 08:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177295829359.23083.17983632860039790557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0d69ab4b240d05d47ffad36587e818336b60bb0d0e78ff527739aa840c671a8
Date: Sun, 08 Mar 2026 08:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772958293
