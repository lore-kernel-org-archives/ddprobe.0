Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66BACCA6F
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 01:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781918794; cv=none; b=mU4SgF8KFZGENlsvXe4Q0bJ8jtrWx1baLdv+iyujrTjlon9SN/G8iJpAjjBeEsVKMyAeA/Vb8CkUHyhlv9SNA8uCPDhSdcNnVprj4BxFBD/f+y8o9d2RdIIMkVfjEcxMDgvZoMNxoSMQIyQMBf5X/bllx/ktWZn4BKM9vduvc/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781918794; c=relaxed/simple;
	bh=8nlRtaXafRUdra5IL6KxKs5brJm/WeTd+Xf0tTRRsYU=;
	h=To:Subject:From:Message-Id:Date; b=CWTRA4AhD1G6m67ocClSWotofjrKlW0sRrmUY9RfAce3OUKgziunyypXeEuPv1VXJJBNo0rMN2/nGED6fvg0iby514YPvcSPjD8Fa5TkLZzYDcYAKDrTtku0oNv6RuokW866D2Ue2oO193vNBbLbvF5yO/6v2H5y/ugxZ2KBhvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pu3EkcAn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pu3EkcAn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCE75C2BCB4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 01:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781918793;
	bh=8nlRtaXafRUdra5IL6KxKs5brJm/WeTd+Xf0tTRRsYU=;
	h=To:Subject:From:Date:From;
	b=Pu3EkcAnJEGZiHxx1Wcr1AloxdEyG7hHTKQ9LUA+OsZwDMx4OMoyvm2xdoJWcpk76
	 uWJk3TPTm3HuzxcPvSJDs0XXPzNYWvmVR/kc+u2/GRmk0CLthf36kwp16Fgxm8oMqK
	 tSIJEzBR37M/zzhbQhkA/EynCpILLTHBKMwLJR9NzkDZ7ty2sNH0Eh/Xs9+DdqJ+Gl
	 9u7hL/OGLPJW7unnOLQbb2H6SL71AqTgeFHqNyQ8Ub1lLSIorYlkG9Xe7eg/clVt7Z
	 j13aCS5GtNN6qUA5NdcqVUBUB2XnMozYm6GxUkWbOWGB8hveS7RLDfDGixo1KAazFi
	 3UnywZTN5FN+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8CD9CD98F2
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 01:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178191879372.3828.1830722671819530035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be702f8aeb794736078632050c11b5651a9549cc93ae2c08b40bed72befef907
Date: Sat, 20 Jun 2026 01:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781918793
