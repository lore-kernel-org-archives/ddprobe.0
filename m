Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6215717BA4
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 07:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716276743; cv=none; b=ZJVgYGpJO8tsuPLEH6O8HPaezDB+ji9lwmp5m+rkPVc0ARCwZCgUiwMQf9LdjvWHLr8RPhMacJ3XxU23VqCkKXpe17u99De1VHev44u/IIrS/gyzdcZspfi8ey4+8dNB8iERe9s8R/EeN1hzb0gejGFhCfZ3aII2dTtcGxXuIKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716276743; c=relaxed/simple;
	bh=5MZ6oDQOaDo+Gaz+gr+Wr86eN7/F7zGtDEDsP59W8UE=;
	h=To:Subject:From:Message-Id:Date; b=NrjSDM+15qkQpdj/+fWYxeHRECiaPRkJ2yzISgsw9vwx5GddHogSs8Cq1jV9MdrTlmBGSy9fnqytKiITRznRuX5KYxHDkhmdgd9Npm7Cie0VGjxRnBWq7nqlCc6QYOARyhrLwFjOkz19KLRpum50R7mD8nhNC95dGUh2GB/d2Oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MVj+pZxG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MVj+pZxG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7FDEC2BD11
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 07:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716276742;
	bh=5MZ6oDQOaDo+Gaz+gr+Wr86eN7/F7zGtDEDsP59W8UE=;
	h=To:Subject:From:Date:From;
	b=MVj+pZxGXbfSGX1ONaGfqEgBhM4MbRqpqxEbZh8YbcCCznU90KqMtxO+o3EF5ublj
	 1SaqdX39pC2HtYTSN/KOFq1UTPNuVAArFIsVJcuS0JzSXx0BS+4HTij5klqilOsx8+
	 YDEEkHuJ94GeZgQZ3GRnG8s04Xv/sGLCR/1DBIkK4MPqnyUm7WlOq+j7i2fCkTcqjq
	 1CIV3yrQQxIKMPK0d+wvqrSAKkxHDR7SHVAKnWjI4B0/fd0lUXwAcn/ySeIG3Tsvm4
	 x9X9mf2ptgSL4BhzSzUBjHJOrisuZrEPJBG+2b+BxWrlydOpwBctvMKgMWPIlFkdaL
	 uZYmTmTIV99/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0C4BC25B74
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 07:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171627674278.18818.12019895422931650407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d34f16df6facce1e6022864b82124212570b6841ccfc961eb33ada533420b4d2
Date: Tue, 21 May 2024 07:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716276742
