Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4379B12CD8E
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 16:03:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716566603; cv=none; b=IfvBjC46rqG0HAjKTQDcOHzp4DOwVhSKyXs/P6KGdBeAGVZzCMkJsA7Wbcoj6Qj+2BwukZtE1TkpGY+FgItd2BKRZzPff2gBeY4R/119JWX6tQXabm7/NRLes8ZUAHrcyN9X84fbssu453539pecmwN5vfgzI1SlraXA2KFPsdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716566603; c=relaxed/simple;
	bh=qMy+9dnlrflVPFJ2RAmOBJKX2kWs4s2I12THVv74gmQ=;
	h=To:Subject:From:Message-Id:Date; b=g+aFhDyXgRInw+aUdsPPCE6zdac8teZeztg2bmLcaniJNk+r2dCb6I7z5x2IzxClBYEW64NItLp6hMUsnQCzJYBpQxd17i4XQfw4I4DhUk+dr5cyevHFN4H5MN9Xd5tHpHxTa13Rcial3blRcOgmyXL9OGda/Btgber5SrGZDGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m0Zrn3hM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m0Zrn3hM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1AE1C32782
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 16:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716566602;
	bh=qMy+9dnlrflVPFJ2RAmOBJKX2kWs4s2I12THVv74gmQ=;
	h=To:Subject:From:Date:From;
	b=m0Zrn3hMWKV+sT7p+ThS4s5xxuBYwkjX7M9znf1O7y5r5JyjVbwDNh7g3qmTa8zJx
	 OPfBat9xJrc6H39thWIZI6ynSIWSVpE5OvpZebIhteGqYxcDW+PAjoVnlS3Me7VO92
	 QuuouQqeMMuGDtYuQFTsY8GYMoDahto41XPPeeo4dSwq3q+KO4tRjPyrS8C0I1e4Yc
	 /U23i5NHY7OMRxr7mrvEc+QpP45a+ZpEYOTiucn5vkdo/Vq3dG7mRpFWPR9KasGzj3
	 RDcfNLN7PffoeJ5Mib/gymA3ZAG4CVuk7ZKnW9MHQy8y0mySuVpzCJ+GtGQ7wEimoW
	 tIX0zp3mr1V9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C26CDC25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 16:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171656660278.4444.11327697132514840837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f7f9becafe81fcea9d8c02064698888f961818cc00f26133c2807eadabbe027
Date: Fri, 24 May 2024 16:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716566602
