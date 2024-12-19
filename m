Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395841B6D09
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734644754; cv=none; b=BlFaHdyHXGZY+0xGlIggcZzMqSpHXfQH4BcaFO5DzAMcwOYtv/1Em2+RlPuzPyBR82qqEC8Eq5HifS1CgfdifmTt0aBb/A1FJNXLIdnziynN4qD4p5VfS9fiFyKgEqUImnzVn6hBlSnRXtsgMDPJLaPuDKN82FzRHOc8eARYk4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734644754; c=relaxed/simple;
	bh=/UaIEP/MsNmhNpuPQUo8Ur/2iKo5L6JWp0U0G6+hbhw=;
	h=To:Subject:From:Message-Id:Date; b=DUZDYH50iugpA1BTWP7AUfhIUbHiv9bz7R/yPCxSAL+gOg9HH/qjB4WhkqKvt286OZTlEaGmDHaj92bf0sXs0Y1LG1YLU8dBPt02gX+EoAxRvUUUokO2jfigO7nQ1nuDQMxw0sRq9yL/T6eaO2Jp9GnX5Uvhp4i+8sHZY6pSJDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RdIBxnsv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RdIBxnsv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAF96C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734644753;
	bh=/UaIEP/MsNmhNpuPQUo8Ur/2iKo5L6JWp0U0G6+hbhw=;
	h=To:Subject:From:Date:From;
	b=RdIBxnsvy8lySNqyIU+AtJMtOpmNLYBA1Hh0oz25gzW71XSiT18whjY+DXKOOnZUv
	 yxGcC1CPvgBNEvp5JV04aqJNrTz79wVB/PIn+2EfCuBnN6lUOpikJ+lomp1D5sFoiD
	 k2AcOBuOn5Y1hrDN9pehyLevwm9CvXLusA1cWG2VuuqsjQzvkK4ogXy9JQUQcVzKSn
	 yfAzOFcw7kh3euU1jm2CRsI+CN1rtfpGRWyZi0YUIp50QLSo/lERofzGuow6ROJnaS
	 sj19KR5SBN7iSoJB5CSBK88vcLuJ27xRaTJ536CN0WLoyiGTjtYK+Q+gHgA7OqwhIW
	 6noQdfS+bCpfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7944E77184
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173464475367.27613.15843417577167152834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61b1e21745264a34600b26b529a085cf5225e7423f28301d98b857f868b95761
Date: Thu, 19 Dec 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734644753
