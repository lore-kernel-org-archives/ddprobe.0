Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58DBB3218B
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 08:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713861023; cv=none; b=NEAR7PLNEvqT2od1F6puc2pr9ZbhyLhciRf6su4+fMjh09mjz8ibIMxZzWM6s0HEYKB3Swj12AKoJLV1fOxcnm2oyhw0brTtatIeuPtW/tGUClAvYBrCc08IHn6VVNIIwv9jxo8w6tIGtHFwG7xiXbzf0BmO+LTtpi4r+4gwwiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713861023; c=relaxed/simple;
	bh=9iAjETFGHEWe2KN+dI08KeN7Wvl4VTC9BsgbB6p3npU=;
	h=To:Subject:From:Message-Id:Date; b=X16wERFo/v39X6gMUP/gETftTRsydg1WavouGHYajWnqoXIoFeUDvLCLXiw/Hq1jiU1BtBtVwRfD7q8MhRlPRaSWiBUKgH/UBps0FOVwLgNMr4WrRwoYcyc6bj4/C1+G+wh9BLVjvZVl6HE/6FJAFbewbZPBXHK5lBB/OrzKAZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uOfJCGTQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uOfJCGTQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4907C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 08:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713861022;
	bh=9iAjETFGHEWe2KN+dI08KeN7Wvl4VTC9BsgbB6p3npU=;
	h=To:Subject:From:Date:From;
	b=uOfJCGTQCqtXz4aMV1wMw7P7ubo/XTJUS0Bycdmp6jmdsf6rGsmHvHfJXc1lUEUFo
	 DB5RMvvKTO07gcTI1iPJvKNzh3l2Xphf/Dw7dzH+7uZmS1UFNUt/i/6hNL2DeuFWBL
	 EbB+ZDgMRY497xwpXdGVYFnEFJOt6cI5Z3R/iCf6/jEqJDGCV/aDo2yBBBHciKKKG+
	 RHneEF/pPLNuaQLiLflU1AdGdgjISXaQlA0qrkZjPCnKdgBpvU0wveb/hTzFuEQqzk
	 Yz5N6DVYcm0WbqJ0I/DVHfcdwXQYwGQODy5H7ECkUDDYZsJpAVeRVsnSeS3Z9TSsqM
	 Ly+/ZVAfzUtLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C12AEC10F15
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 08:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171386102277.26899.8763547303996777300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d38b9d45d2a616ec453f8198f7c818185908ae1d2667490087706992417600f0
Date: Tue, 23 Apr 2024 08:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713861022
