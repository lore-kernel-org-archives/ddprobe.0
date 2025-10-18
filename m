Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4458E17C91
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760769594; cv=none; b=QpLHQ1oFk+H9bNb+Un4qgDTZBkcwJY0mV/7mEbR5M5HNO2ilcS6YIz5OQphzHlhC6+R2LfCGBZcB/paMVmWBCSiNaEQhhlK5OUzjwbEXwr6+pDxZvAAzZDWHGi2dpv6fDHRKMuJzF8q+7ifA3GS/51ed3Ga4NA45vcmh1kDrREw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760769594; c=relaxed/simple;
	bh=YUURHmLrDg11hExWKt1on+z738ayLNVeQG2QJM33/5Q=;
	h=To:Subject:From:Message-Id:Date; b=L7c1W/I7T6IHpgvbARJOBwM+B+kk3JLLZFN4OaV2ippXeJpaZt2wn46XUE9LqOpyjy38aCZsoAgu7N/ane8KCkD+G+sueNuuKUj1K2KPxLQ0dxN6L8J3aLIyKGVQtyGmoBSw+WDnxcUFfMa4HzKjvNms7YLyaqeZb37wz9F/mtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kW+b+cRq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kW+b+cRq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FB6C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760769593;
	bh=YUURHmLrDg11hExWKt1on+z738ayLNVeQG2QJM33/5Q=;
	h=To:Subject:From:Date:From;
	b=kW+b+cRqtauJqJ3K+KckBP1kZqJWAGTjl+zFvDYgv7v2BfT4nJ5KF1O/RH9TESqgm
	 95KPgMH59kxVhAff7caSZdASKh3nY6NcKTV6M3T8LlHnHdO60muKa/VlthZJqUwlib
	 DomuFhLj88fLwZRzozjzf6qDbvplIrQjTYmj0CG+nT84xqJ8rtxyFYHITZh+Sw6n7I
	 6F/Yim4d7dYMovUIkk4fZCCbL6z7w/Aqyz/f5r4m+ofhVUHayk2DfW2jDih66Au9cv
	 JOdP2gaSBfiJKpxxhSnMnivA+aXiio2Fc27NH2D7dggkX6jDhZO8+JuzzklhaRWRAb
	 yufKVchv1Gsvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F8CCCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176076959358.26360.16246801143781687312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 710c4f9d9984249b2ef424f61b9d2ceeeb13cf6090cab67974bc0a1de1dd5261
Date: Sat, 18 Oct 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760769593
