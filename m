Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D63C327204
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779085834; cv=none; b=MO9RbgiR6wqIChUIvrhVPrNnS20SuQFW1iX3NZjqTtEHWahDQlmDNt1XtW/mLdrXn12k2o177kvaRb6C8GUzOu2yti6/7FGiPkcqb+xKbiANMO2ltMazrEf4gO3LPhS0y6wLDdEVTQ3pKKhESn/S4WiFQNw7L+CeKpGDHQrYH0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779085834; c=relaxed/simple;
	bh=Pum27Jgq3gvcDIGB8GbYE6wKC/Zx0LNinZMlyA5Bpno=;
	h=To:Subject:From:Message-Id:Date; b=I5KIs2Li8CBjfYTQOqj2pqty8NplSoGDMZRFjvP5NykiaYMKMcxyWVvJZQyl+4U6iUyJBqvjP/cehZzAEjJGviPNasvvCKUv56KG4qYcx+JqOjK59Ocf0dA49QIy5rWPqEHaCO9wdGDHvZOGo5UXIzMPyb8naXsTdcxFOfN1Y6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iYy76qqc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iYy76qqc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB5D3C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779085833;
	bh=Pum27Jgq3gvcDIGB8GbYE6wKC/Zx0LNinZMlyA5Bpno=;
	h=To:Subject:From:Date:From;
	b=iYy76qqc5nMC+9nY+hHje6iXwsRN2AzRByTFhK1ypeeCW7tqV4TTZp5jbCve33v/v
	 aJmeBm51NMH3zPDXd8FLUWtAwILkLcmv2qjImiRdK1luEPyeQRGRw93yAeK+/uL/Mj
	 S7vmakWwVH2sbp0d3+inNOaCJpo9lyDtf4SDiH6eeVS2CXtzwnuBTrbGZsmXlXOXMD
	 FVjnwOGTxsvpOBZeRCbpKwm2JPqqREQtTtknbSQjJwFGS0mb+o8NIE2/iuQabOz9PR
	 JEV6+l4s4Z49RmA7TY+VVkt9XiVrMw47ggGJO4JKQJUTuMUjvf4/rKuyynQEV2vPMB
	 grC08WgDrcHjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA34CD343F
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177908583369.4704.6233305494507353667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 377bf49942b8f77be832b757fe897657b8e3379d79292b76ec2a3c9173534d2c
Date: Mon, 18 May 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779085833
