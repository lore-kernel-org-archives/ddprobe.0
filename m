Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58A522629D
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754855995; cv=none; b=iJWFULvwOM+CnvxtUODrd4KJYANX/w28SiAqy0/Az2Cd13BTt5UORdFhvJ8OtJgjfJMXCCBX4Wp5CJgwaZpck3D7Q6cmbBR3keC58O+d59i1NBIhuDjhkBlRDcN9pt8q1LcCHTQQ56jAzMRSeQ5Q/KF6DSj4f/bLzrVu6nfxNDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754855995; c=relaxed/simple;
	bh=xziLu04VgGy7LiPJhqJavCBNSs34WIX/fGYZPPLXiSQ=;
	h=To:Subject:From:Message-Id:Date; b=jGGOWsz8Bn9Gz5UQEFtxiKv6U5k+BHV8lz5lANco5LCASCiaCJdi8JtCopIpC3x7H0OtiwDrIq6v8sQiG6tPTACMdNVZ7m3DrKmN6rIinL28OmcGGb+NyPJWGSemX+HcerXG3iYYY3I8UfpGmYPUEP10HYTYcpL21h9U4fHYn34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MFh9nm+0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MFh9nm+0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AECC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754855993;
	bh=xziLu04VgGy7LiPJhqJavCBNSs34WIX/fGYZPPLXiSQ=;
	h=To:Subject:From:Date:From;
	b=MFh9nm+0/VkYOvvRbIhbDqxwbh8q2YSJqtTrG5ZJrxxcFCypmdtbZjELkwEobKiCW
	 o695NgYQux0VLy8BoIJm+s3HOzm06OP+TLx6aColpzjTUgBD5UgXDVeF/M8Zb5ST2F
	 jzh/ce/sHwl7w2NKB/nzMYS28pEDSVNAZ4vDLppaTgmEeQbOHuv84RAO3sYhIEtlT/
	 OlaiRuYfl+MbucBcwM7A9643w/W/alslyZVjxHqr5OWPquv/+6K6prwWYvhxllxWYL
	 MRNl0Jtm/ezsrWfTuxvQveixJb4yMf6l0XQxnDDVqo9UpvZKqirgMGigufNcOJxaS4
	 JJ0s4nl9Upjfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9163CC87FDA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175485599357.20264.8810397497412541901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17e4b7081d3952a059d969db23fd780fbfd19f8f7b93fbb3c7162516fe85c874
Date: Sun, 10 Aug 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754855993
