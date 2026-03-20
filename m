Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 092141F4CA9
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 02:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773974094; cv=none; b=TQjl9WAHhvyAZlFsD+WBZgAC7yQlUpFkrVzntDzxJ52p+cGJtsSvxgK4Ih7PaN03bLsaX0ebgB6ulvkpbMAiSibWAPyW86ra5NNXOwXgy/vL0g1kKgR1DJPXDpHMISzsX0b83GqDKLV6L1yFTfGBsoaLo49Cf6hTT7jFJlf7pv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773974094; c=relaxed/simple;
	bh=N2kNdRo9r5mAWGKbDZJiQvMVBOhHfPTUpSqZgIhCEZE=;
	h=To:Subject:From:Message-Id:Date; b=dOpOtkNgCRtJ5zi1uFkwje/ftWiUhSSLyTD4uw1tt2WtjC7/LhCNnuV5nsgKYgrZyFIWxf06jf8ojBraayDa0Z69RWtbk0doBnVemr+BH0GD49UjCrDQPZOu/e49iDivrUr+FD5kTiARsNFyYugXUVPU/FhkyZu8LwOmi7zkXPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PHFJs8kK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PHFJs8kK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A179CC19425
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 02:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773974093;
	bh=N2kNdRo9r5mAWGKbDZJiQvMVBOhHfPTUpSqZgIhCEZE=;
	h=To:Subject:From:Date:From;
	b=PHFJs8kKVojQH28zputEARrAW5E2C1oNhouQXMB9eRW4ihGNHGdH8UJWjaKiJsmL7
	 sFKyWlhixJNPjc2Vmt7jmCq0zQbQ2HZEef2e5zEDgS+3DtdA2zB+JrQX4bzKPyjtXO
	 ogR+fFN25y4TkAxC2dUfSnuKdTDlAQuHK/x65UDbBuSa94ib3rNEFbAqgJ3ozo6NgU
	 i0Qv66H/GxbZTY74A1aEoDey1J8iMzw8EW6+JU+Z+yd2NoDwHIWqVIpFGepyWkL1EG
	 rZgzGDaebDOqFg5OCJRxs73XrRcdsxbqdg2Hrak2wFDrHeZOskesL5YHlk9ZUcDmDK
	 kdvrcrJpv0baQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9A3109316E
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 02:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177397409357.17902.16923485776616685917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 196e037f535c04360d166149dae31e94898a0f069324afa30082793108000f93
Date: Fri, 20 Mar 2026 02:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773974093
