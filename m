Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F38D045022
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 12:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710332897; cv=none; b=Mbotq0wrT2iZbxt6AK+5w4i8vJtqo+sd1QqhBjjL3r+arHmxGYslrCdvYC+oune9VYlmCSrajccTJKx38aBYC6Tas5c4fIAIvTsvyRLf/ZUY5MfisIJ5oUBZQr1iRvelzrALcUmRkVYHu7YKFvxIq3Z/XSv3l4nqnXlaZt8eqv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710332897; c=relaxed/simple;
	bh=NmuXJhseYx2VZF2TQLkyOJ21z9CuF/0E7u0+1mPh5dw=;
	h=To:Subject:From:Message-Id:Date; b=qJ7ymma7KZ8vQMiWH2J4b+9TIYPDUkZq0cOdjTnAMIodrm/sS4ST7s95pHB+XjlTlt9sS5MJizNOElbTPQ1FLUTy4U6X+A5JXxpxFeZKFlDkgcLF8g/AmEVA05UWBxIxP5zfDEJ+zE1KrB4jf3QHMpODYiWxjfK5GJs1ekFZ7Hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GiNHslsi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GiNHslsi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88EC4C433C7
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 12:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710332896;
	bh=NmuXJhseYx2VZF2TQLkyOJ21z9CuF/0E7u0+1mPh5dw=;
	h=To:Subject:From:Date:From;
	b=GiNHslsi0pAqv6BJZEG1hqnJLiRR2Fkv+1i5e85T/iyBzU6kdu6Du4ETRXPJUSllK
	 zxgqjQOxXWv6iRxRiQvajhJqHCssdefEHfU4yYAI6vJ9q6mtus/TDf9Qf05fpDMB7Q
	 jriNy70MZUOEY3MktS3PIL7XYK3ZFRFzLcAMCk60UzsI2v1Hbi0+cBtqOI1mUMCzd3
	 6RRSnv9K4H8qdfEBkmO+D4XFd1rDfwdRfXxNYAqHM7RIwK8EgOQwuLXgFORdF5h9Q0
	 1FB31UtdbASROntj9cHFyyoPvWw4f3TZ+QuN8T5e0sr+ZqIEqJH91X8UVW063PiFdD
	 6Cdus50Zm8tOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EA2CC54791
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 12:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171033289644.12471.10340520788875338639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cb3dc464327c223830192e3b72f1a7ba8f416b561cde90b1ec259db99cd043f
Date: Wed, 13 Mar 2024 12:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710332896
