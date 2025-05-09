Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E7BBA27
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746750594; cv=none; b=PgpeS+onyLVxDQjGxxBZW5SWF6VC5dtrbBgx6JZ6BITUsdS17NP8zfz58Z6qmEdgbZwJ+daiAjGL4S7W7oinbSnSaXfGUYwPdGv2uzaiYsLckuic6qNEjm8/AwipFxN8psuaga/9XCBUzaW1E4TkExgkPyJlwSdsoWVbLeOEuYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746750594; c=relaxed/simple;
	bh=mwCSn5M0ygDwCzaj2/QjSeQnefN+o/MNHVH0kgJ0Pi4=;
	h=To:Subject:From:Message-Id:Date; b=bcin9wTPrVyZEWoVK1+51xC9J5m1+/sLgVkPQBhSu3KQTc+Bw0GnRHDK6BNvN+dDpszVpzmwgb7B58L7OD9AbuYIbBMZvJ1WSibAM4NA5LXno+NjEV6Ck9k4VEhRFcWYTSg25vY12BF8FKdeE7kctuBxCohJ4m+YH3VqG/qoeb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oeBtqhac; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oeBtqhac"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E301C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746750593;
	bh=mwCSn5M0ygDwCzaj2/QjSeQnefN+o/MNHVH0kgJ0Pi4=;
	h=To:Subject:From:Date:From;
	b=oeBtqhacG+0ta2B2ykPezBhRY6ErjwkikPDM1lK3Ta5kvAJ6xt53xJYJixdmgQplb
	 cRd4JY8W6+zjoQZv1vX0mQVJIx/gH9Yi3ZZTsP40pKW33VnnYrqKMb2LxOYp7HFivD
	 wMway9oqtg8v8e5C+epOfo0SK+K+LK5ZcWnD4uuvX+FpPD9xszPDOG7Q2eeZw4MMLX
	 /WvKHM/xBNNbqfZ25VOZaT23ezBy6b/GaHxNaqUF0/r8ZYxPy9+L5tQVNJI/BNaRVU
	 1h0qHxBbE57A48oIYzaUaiW3C/uVzpD4l8wP+/OopcGNimnkfmoSdGAlAlLAtbP8pm
	 Umzza2rn9pGZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F041C3ABC5
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174675059357.12916.14295813450462742358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 917d552b650717aeb5661c64339d5ec24a55698ae489e12a5f9435f2f73acc7b
Date: Fri, 09 May 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746750593
