Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C9639FD9
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770296634; cv=none; b=gDZKT9r9DaDD5w+HqCFyKCFIm2gIeZs4msXU5pct7k2ci1e/kWP1MOqHg/416nWGpfOrsprlW4KbuXtK2jXw3kZ9PZ6qeZfi+RnNHxXdUKMvdDzDnzd20X1n2/RhgWhR7oMgpCUmpzfm83t0kVkHlbXd57CM1SgrVa270dSwzyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770296634; c=relaxed/simple;
	bh=FVAj6tOJKiTW/YOXdMgNo6VhODjyT7J/NJOBdSZN1/Q=;
	h=To:Subject:From:Message-Id:Date; b=XnzlFBSHrzqBzwsT10rq8ujrXCKg5wuFg2Ix8eSGn+0P6oGe0+VL93Ar3VwdVzYs7RQIkKmLDSIiorSFELGe0A4XeWe1JQUqGTicuf4pFU/NtIrHi7NYvKgLgLBb/NpPnRPirKrBoZ+DQm1Q6En+No72WLdeShLKlBBLKup+848=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YpqyyqL4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YpqyyqL4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC52C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770296633;
	bh=FVAj6tOJKiTW/YOXdMgNo6VhODjyT7J/NJOBdSZN1/Q=;
	h=To:Subject:From:Date:From;
	b=YpqyyqL43SHyuhmYxoFGrsBz/0dUBIkJ+cPVTY9Vq/kl1akCkqXIyPsIoicWqWqtb
	 wqyaA6J8eTmbp6NgT8FunQ+JnfxaP/vXKyO39uFH+Ayt5+LDdVzK9qzZZfEOGG1ZXB
	 XTK5XmOkGFTgbg/c5bRK780bg3TtI172PKMU3oyglYsNyqsMbScM5nH+kfVng16kzy
	 BY/B1u7FgvvaV0Bf0VosWcJ9V8CoT++4Wuwi3tceec7j/k274VJ0Qd3Cs+CZ4RwVRV
	 jzG6aG9qR13MsagLaqdSTpEf+IQZ32c84jd//3vQmy57mU95Zi/QR3kF4gi74osrQh
	 EtvJgjSeGR9sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91364EC1EB0
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177029663358.24919.7490975414398902892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba14274005be11161c87976632d3285ef23d1a40083089b02596b68350188955
Date: Thu, 05 Feb 2026 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770296633
