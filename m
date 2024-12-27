Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B48E1F754F
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735318554; cv=none; b=UO0/paL41LkAtQZLHXln+FW35zIsK88pHZZOknpUgeKEZZCSC9+8P3e0D6yMDhZ1AO62B/5Kl6auRYZXRVISKAeY/W7llnRPNpvEGLflwdf5wtyI0sevynXXZt3k5+/BQ9gaysMwOTpbpdpBUvhO9yExAkhMnXGjwP42OU0M28M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735318554; c=relaxed/simple;
	bh=rwb+LjK3t2G3QIrH6XZaJBARPh0e6QdhEgqTFCvV6Es=;
	h=To:Subject:From:Message-Id:Date; b=AVYzngXE7k/8BFAK8lOAoN4UZg+Hr7+lP4Jx6SD/NgC+gvco+Ixudh7jJNOO2zV+SIBYjf61r1cn+mn8OeR1dgmNSkwxPRVk6Rd+MpQf/YeJR87zEfTh7X7JuRiHpUj6Eb1AzxQkW+wL160SJASoYPG+qv25WYgtJDiz/VgKWuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WG9gQRY7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WG9gQRY7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE829C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735318553;
	bh=rwb+LjK3t2G3QIrH6XZaJBARPh0e6QdhEgqTFCvV6Es=;
	h=To:Subject:From:Date:From;
	b=WG9gQRY78kNyiRvhvdE/fB6H8yqC0iboLRfXWTShtOh3XoMx4hCSmiNnBhovo62H9
	 whmiiHLdy5gblsORLrm6e1d55wJ+iUVwlt+kRdHW+0GoI6JPf+qrxkXGPA+CIMcME6
	 3AQ8hl0G+KPvwHpjNuRUPEf5YCo5FMxs4dUhA7sVchyVV1EVBRHD7Ma0+gtu6U4Wzg
	 MhrK84gtBHwjXR2krFp2qtkQ3d184oxURpClu3ehFxAJT7D1xLg3JEBN47tthG/XhZ
	 1qVNjAm7E7hO54puaUao4dyDsJADvFvCrMGxkcCAV6kQ/llWq0+7JolcIX8DeccHdr
	 M9XFVA9krxqrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5EB7E7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173531855365.6877.2157422305875176312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4d79c3c40ba14bb7776274aeedfdc24e0e0e4549dc4c1d576a555ed7223623a
Date: Fri, 27 Dec 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735318553
