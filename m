Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ED0E149000
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 13:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719147743; cv=none; b=iZH+h2r1qatCSYAv064dv5HNR+o7mV/iU8w0HZa5Mvl9SA0e/0FD6snYRhMnS3hFAYYmAMCXO4PGOL82Gwl9l/FGTADqwsVQulsweU7Orx+2+fXZ7goiWsZScyeg+MDhFhi2KFNKldMR8nF1UqAQIyS8aO9LWTFudAGdN2PmrnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719147743; c=relaxed/simple;
	bh=QVawLEkxZqZhF6jLi6IMYqGN5bgCubzX+SMqFSL20nQ=;
	h=To:Subject:From:Message-Id:Date; b=Zan867lqaKR5VQF8yMMmxGJNjC3+DEXW8RNLedDolUTDSwN7AoPMFFY1GdqyLTWWJ9H8eyE0/hsDZcfUrnOiHDpuNRxtY4gcekBwNwafuOIfAGMbvRtBHUwYYdD/D2Wb8LHxp8J6GLGeNqe3Cx27q3DKWRoUI56qBSmI8SfB4gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JTulMBEe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JTulMBEe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F38ABC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 13:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719147743;
	bh=QVawLEkxZqZhF6jLi6IMYqGN5bgCubzX+SMqFSL20nQ=;
	h=To:Subject:From:Date:From;
	b=JTulMBEet7JCJ+Hn/Vs9Tsc8lPRd3LZoS9UHkI6G3KgKehJhbQdVGGlnTSYbHVIKb
	 UmRAk0ObrCVNINzZkIFtPWeJ1MUp6J8NmEw35j3zzDTUcAObWZmlF0v5yxl5mSIvDn
	 H65nLc7U6eA+PNoXbLOUqgB1QKCtlj4LKiFVPBQ4j8SB/1n9pWc4pqkqkEYWAC6cBo
	 ePNEFthmDd/XVnWCvMV/oEo2tTyJt7vXfIWbw6KUdnoUnTDkV1I10DCW36c2oi7pBH
	 RIuyUXUhDiey9GyuJ/71CUUEacc9SQ5Lky5mLAUcH8u1V/+J4wDN9RFBxTVVIlHN+a
	 wOzBn7hJQhPfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCD81C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 13:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171914774283.32104.13455446748796690832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2636af02bba347082717869b35b71a9e07c24b8dfd69243624897361f169d954
Date: Sun, 23 Jun 2024 13:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719147742
