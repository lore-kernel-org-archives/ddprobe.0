Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0C41EA7F4
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 02:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772852094; cv=none; b=KYgKAgsEnmvY7H5z14y9hxRMJ1x79NgpHIcp6nHgMJyhYF74eJkBOYOTvJYfQgJ81a4+tvxtqix8ee5qM7GsLnYXL+55tY/vDoS9NKG1w3GqCid7J9TufpvYvkvyQhq/93EX73GDaW9DzzWefU7G6/ZqgDIjS+5VywOThjaZhrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772852094; c=relaxed/simple;
	bh=x4uyWyJI4cDrUPcMLDvpoFh7JmipllnD5R1dXtgHCFA=;
	h=To:Subject:From:Message-Id:Date; b=EbRrSEAYiVCmzi+dniGB1BvIqLe0uuS1MTtgMmAHoA5vBKwZtXJ+i/bZnSlrkhryevY/fpFE3QjY5ZHncR6GeupHwCeaUkXUfe0Fci0ZYFo38zBfDMnCJffCfXM5whIdmIQzq15TvAg8XD27eHolZgssQ6yM1iDHiW7S3sU4R+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L0AfCzR8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L0AfCzR8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B35C2C4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 02:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772852093;
	bh=x4uyWyJI4cDrUPcMLDvpoFh7JmipllnD5R1dXtgHCFA=;
	h=To:Subject:From:Date:From;
	b=L0AfCzR8t5xJelYTMBL5QB/PJ/EC5+hwCZp7nXqfWOsF6xJmp/SgZzYnX8oo+Q4RH
	 qXBw2K02BxblPB1tVC6A181MM6RykI5o7tLUDio8BIJfgTW7gHW8xpspwNhAUyFBHI
	 uzFOBXVpnBItNPf8VmXkKk4JTOQpTDzX19B/YOHvtZKFxRpWQ8A5SfWVo3ESlINBOI
	 oTlhiylpMs1VA+Z6ZsZ0zHNztYF7IjNIgqQxymOGsmybSRKRovOio9erVr2RkDmQb4
	 A/Ti5OhOtYNiMnfqdH3410Q6OE++yL3EBgL1K+1l3l78jyaHotHoXFqQJliiV1z8Nr
	 /p2uxdmiapEZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2B4CFC9EC0
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 02:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177285209358.29387.12721563502788211268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 422fb62354675153b198f3f4413602b36e050e2d4de9fe6d7bc2628a7bfbeb12
Date: Sat, 07 Mar 2026 02:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772852093
