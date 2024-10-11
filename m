Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F5331392
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728621954; cv=none; b=hnQ5rzg+DUVER14Z6FAbM5EwOIYupQAotQ5bsD0PeSAYi0+QVw0pNGRLbWudx0hm0wHcrQK2ucg14QIqflSe6nurft8W+RcLLPskvXAX7xfU6YIFgz8CRTlE0Sj4RefIKRg31fVyKCz7hNl+TYzFo2HaxGH5p8N748/QAXR+KmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728621954; c=relaxed/simple;
	bh=peHz+7lG7Xt8cLcuK3UzU9OLiRCfC4112CqHAycsKXE=;
	h=To:Subject:From:Message-Id:Date; b=OIv7gVuO9jv6EfWRcjjGvGi8pm9tcUqVX3LOJ1Lf7RFQYWwW0wwYkpbrr0McdFJDgzKjJ47O873nAk1DzI30rQjPV/DjxvKnsYQBXhQKk9waPJz7gNf+lgOlx4E1qO3x6fQtXbU17ibU29cLUgt1Vi8vXUZMfp5kksjcuJl63MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nmefl8C/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nmefl8C/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB71EC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728621953;
	bh=peHz+7lG7Xt8cLcuK3UzU9OLiRCfC4112CqHAycsKXE=;
	h=To:Subject:From:Date:From;
	b=Nmefl8C/JCDnHQmLuHMq/VXfrf+2WrNKX/9wE68liW58wD+ugz3AYojz7tYujE3m3
	 j27EXXt1jXJE/lm2T+ORM8/yp784UsaH/vGOYkhI+kH9+5mY1BcKv8l/mn1HdDBHgg
	 tGqbJR307Yb5QtYuT5X40uC4/kOyNV27iG6MJd9RpBBox+DEjZDW8v23L4oyLPUbJP
	 pBLXJGSPxXQjlNXiWSRHwEsLYD1Thi5HNAG2iURsn8UGSo2TR8JrXOIQMuDY457bUY
	 09x48ruv9PBV4+PgQWRS8M1BBzypfU2xD0WCkKhv3sXE2OYT8cCI7YdONvx0pz3xOo
	 wdwfI0WbJppHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E8BD2446E
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172862195368.3907.3289496106632624695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e16b421187589a56121ffd26b5747fe4fe02720a83104f112b83bf8495cf255
Date: Fri, 11 Oct 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728621953
