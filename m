Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97129155739
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 22:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718145503; cv=none; b=Cig9Od93FzQSjUPEi1UD/uLM9OqVP4w45M+9mua+GPAgrj/ppA+VrGO9d5/74xi9pFYF4TY4Hlu4tcTn+40uKncyDQBnId/tmMKMBBaLksmGKw0WH6UM4jCyF0ONLHg5cBTQd32pUrmK0f71I63wtVYHh0rhEGdKIB3LjhHBY1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718145503; c=relaxed/simple;
	bh=7/1ZmzF9bv6HPb1nBhMJraMbTLMDP1qLoyXbiqtmFfc=;
	h=To:Subject:From:Message-Id:Date; b=lydYIJySUyQ7L0gOMyaP9QDS2o64QLgN4wLK3DK/NIpom5GoNVJwtaoOVHCUi2LkqTHc3GEnfUY9bOWVHRuG968ziImWql3uqFluRUb6RWOysWo+DkAQ/XVgQH1IOunemNecYnGsgBVfiaHuAdXXhRTl4Nm047vQ2EgHYha3aGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MHOzxqUP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MHOzxqUP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1F047C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 22:38:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718145503;
	bh=7/1ZmzF9bv6HPb1nBhMJraMbTLMDP1qLoyXbiqtmFfc=;
	h=To:Subject:From:Date:From;
	b=MHOzxqUPTAKPRj3QVIImTLCVE1C6l2xlPCpACxIcNef82wRUiSmV+bieyv/GXGg74
	 ASPn7Tj9hjp5uLXzask61bpR4dT3IuyGrWm2poLQu3eOqgyI7F843kOiV/fpMXdOr7
	 MccCe4FueLf+7Gl+uTYMC/5F4s8c41/0dnCb5BRnijYlRcIF0hm3X9oZjnqmEmw1H9
	 6wjjQW9T7g05tbcwSeTUtPED/pS329ERlxSwjgXFYYo9qzLHZthOgbXMk41a1AQySm
	 Qs0cQlLEcxNezfktuVBHfyKyN5CHjwaK0HUh+RycgOLcYnt4fKAY2Kn8eap7Cfg8jE
	 JkqcXeHT2QGgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F3F71C27C7B
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 22:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171814550295.1347.8904419530932700661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4248c435f5200dfd2d57c047c1baf71e6bd29f37d0dec29a3fe51b11fb1d2180
Date: Tue, 11 Jun 2024 22:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718145502
