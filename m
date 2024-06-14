Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 510AD15AE0
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 12:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718368703; cv=none; b=nij/UYtPSZC9lhPMevyKNQjdUXyTHDZOJ/bhduuu1UkO14J5VOmCgA8HvJp1nF6X5J2L0wVNoJI4G5GJXYzZlsDPYzBdnKw6sZEX8TaC+B0IHzU+ntvXD8zifrNa0jUwF01iwGPMg+Be6Kk0hqXqDuCrW/WHFa6L8zWad/WwwWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718368703; c=relaxed/simple;
	bh=WhmwTCGRJhDqiZ9YpTNFprR1omPFr6lHB7dfNwgupEw=;
	h=To:Subject:From:Message-Id:Date; b=pajh5WULEjataedTXYW9qEtRjXTZXf5RNYh+qgJ/VbpRiKgwX4CqecnyI+9TFyeST4RFTdr/DDcx845pLi+9vFd6tzfugZbCY7YTVFuO6SUx9m709Tq9HugNe1+KIv8nNbkiPDdnz03dhtYXn2sfkdsM4zgALIQNkCtJC259bEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T29hkSqG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T29hkSqG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D98CFC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 12:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718368702;
	bh=WhmwTCGRJhDqiZ9YpTNFprR1omPFr6lHB7dfNwgupEw=;
	h=To:Subject:From:Date:From;
	b=T29hkSqGuGSQz7FnDVUa760aG3bFbiX2kLy2gJdEzqSqKMg/QmGBrfJU5fod+dIL1
	 C/YXZ07oNk2QV9QIMgvtcMZFkrryv4sZcmNvs2ZW4ERjmOnVXm3xUhiwRXCLHD3Z9r
	 rEWUiRAJ8uidm62auNe3kW0HtvdlKqISHHhpnxPqu0wAFoIvLb3DCK13n+nZZz9VaI
	 cQosG/joaJCwJzXXApnQnncEgtqoOMctLuuqD6a+SE/AvccfPIRK7pvFtKsxF7wV/U
	 +Pw/Lq3KbErMQtWmyRfRkXjeFOaR9Kx1pxdzU8SEiW+RBFre9yYmatT1Zt4fvWywPM
	 PhpSlt/wNnEpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFB7CC27C79
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 12:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171836870277.11384.11279072305013057225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e20ef5c2833722ea8d92976bb83917565464442b4a28d2e1c62bae1770dcd887
Date: Fri, 14 Jun 2024 12:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718368702
