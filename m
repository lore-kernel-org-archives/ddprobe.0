Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08E4F2F068E
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762933794; cv=none; b=FtgDURr8p5I2C++oXlMSSWHXJ+xNo8AstVfMhCgRD45eT8DsLVhZmIZpYPjV9VKEjoEWbMIBVtDO+3irHZTP2aDjYnMY3xN1i4dkr5n4Drm2/FomDA+qiy53jqTngi1A3SAUg1wRexeeYFaG7Wyg/AfpVsw1ASFMuvL6hss/UKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762933794; c=relaxed/simple;
	bh=saJr5sXCCSPeTqU5ZDS1Pufl/r1ClWvCQVFYJSV5WGA=;
	h=To:Subject:From:Message-Id:Date; b=qGT9oEMdl6ic3NeFgM+i4WPGtCNEZL6Xw9Gjmwscp+YCme66kwtPJQOvCDZ5ECfIzA1qMkdTUxPp+6Zkchq+AsxNKFvCCysjFNht2552/zFdwecd6AWhUBqn7A8QgklT20mHgBus6I1aBgR4XZabgcJhngYV1zcQvQkvDWuPu3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i+9IPZAO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i+9IPZAO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C27FC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762933793;
	bh=saJr5sXCCSPeTqU5ZDS1Pufl/r1ClWvCQVFYJSV5WGA=;
	h=To:Subject:From:Date:From;
	b=i+9IPZAOlFr2Wt2Jw9m6Ajjp7+BCbVYkHgfq6nZXUzynIXpT1ehaI2RzI8d7/OY3H
	 ybuCH13MsJKajvJmACRtLj/k7x5S6YIDMDzF2zefugLYdUza33i1e56LLNorjI+lLg
	 eetrdVzjojGPZPYcVgKrj5iqMcgLDdDzoAtSHgGs5DI7z1t+riF9cjoQMWgRH7ZRVR
	 0agX1tKmqYTHdMZDJpjeKSCKW+zZZTHWhL2RkPlx4+XlMB0moK/AfJ4kf0KzCJMlIC
	 YuPW5HnePDsv+i9uzEnHHEYPk0oXCR62ukNrGQxu0Z1xk8Thv+mYFp0IsQntNmyuvG
	 ey7BbJhGA7BeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F61CCCFA1A
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176293379357.1276.780269438314467911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4046087e532d14ce528b28e45f064566420f77931a576110e08a96a2a04ef539
Date: Wed, 12 Nov 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762933793
