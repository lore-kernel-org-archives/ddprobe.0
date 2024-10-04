Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A01145A17
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728039954; cv=none; b=Y0iukYIROpiKkT4kMn4uk/ZnIJhixzGcoCXHl4dbLERrOrnoE/oMZZYzAmJfj8J5tWg6/YbH2ZSbsTBfWz5/rSr6g+Tp2gmjs2rXoRRlhfXK41xnjz6s7BUQCGNpqAtjMaT2GJuRoDTf6t9TSSp3m2dCHEg6+xq5gwLzSkCp+vI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728039954; c=relaxed/simple;
	bh=1avb+S+Wd+f0714/22YNZ3bk2W2+8oaWYDIm/n12zWs=;
	h=To:Subject:From:Message-Id:Date; b=iqINyro5hHGtSuinalxh18or22oSx/ps508W/9rn0ZDPs7kT3ajqDLlTMMqnRcvzx+HZVsDrmrVv7Y1ZJoTGd4Zu/3lHD8HAepuCbOOI8kDO7TpH0zebN43n+RuwEdXLuepfPEmOh2QUTSCrDNMwf4hvZoofHVlhJmBwYYF91zk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bdsJNgx8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bdsJNgx8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DC2C4CEC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728039953;
	bh=1avb+S+Wd+f0714/22YNZ3bk2W2+8oaWYDIm/n12zWs=;
	h=To:Subject:From:Date:From;
	b=bdsJNgx8ViH3Il9gf6fIQPApK3gnHvzZB1zSe/ENXQm1mF+b8FaFchTqxE3nMmxwd
	 2wHAw+bJyWmaXeEK8LgIneQi0YTeKq1uYI9Ud3/2g/jvPcxxMDYGyxTCmXjeNGCoQq
	 Zluk7SFgCvK2jkWYgs1LpynWU4FMBuDA7x0969K1/xhMu5s2Bj+YdtBtAeSsAWKn3e
	 7p8bDO41RLJ9gDhpW1T/wmS09GdWMizFEpL9cgn3JFaaUqF80EMtC8tUum0iOvGRUQ
	 b6fpJhVXdmh+2H+z2p1FzV6QxlI7UFUVWdZl1QEg8O48le/ckvJnlj1G3+amO6+NnU
	 Ic+y0l1/Dv2MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96489CFA76A
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172803995360.5131.17718736789209599904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd74616116670d09d465a7253edf6069cc9e2442c365825b191dca700ac6bf52
Date: Fri, 04 Oct 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728039953
