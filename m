Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397A0391833
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 16:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780332874; cv=none; b=DdE4ikJnrear606OMMHq/7SYNWXVMLSJCjzoZ2jAHxwEVNB9p/AVNHF4ODmfndVDNCQ57pe4JOnSXLqwSggOA/8GP8VA9pBueNAwkwpzHgRi2/XP/hctIT8WrO4BQ+uR0Qk7KzNWVymRWPrMT2ulDIsQEJ95RJElkuCDvyQ1/EU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780332874; c=relaxed/simple;
	bh=cfm1hz7VmUwWQVYA/V0hfKuTzaZDz2B0Via2bgR0pzo=;
	h=To:Subject:From:Message-Id:Date; b=sVGBMysxxHqJZ+WgqI9tFn1I6YQlA6t12WftFoqBje+riW/BRnfdNZddvDSKiu3BWgzPUXON4Bj7eeR/PFLflCF/fAcpArzCqCkp0YRcYCUZiHrP65UwPTG5/nss7eaUiXKaJ+uC09i9a5Pf0H0l2gkoIkudwEawnobl601wnmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uJiOE8IN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uJiOE8IN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9FD7C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 16:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780332873;
	bh=cfm1hz7VmUwWQVYA/V0hfKuTzaZDz2B0Via2bgR0pzo=;
	h=To:Subject:From:Date:From;
	b=uJiOE8INhThRVl0Qf7d4wv8vxofVpM0Q+pH8C+JYCKhR86AT7nJsYZEqGugKbMnp4
	 LyIDW6Sunsb7jHlHBucPt1q4QKIo3RA0QMaq+kz4Q9xf2P1lGtFSNwrMr7aKMWsdxi
	 pw3UXGtQosw6Gj348Yen+WXFnPbmUtF/qmYDE9LaN/xa716YOoTOHT+h/DUBznEvkj
	 2nH/QYKkZTe4O5wtFZ4QsUUkmmsYk5+RhXN2e0W6QV1ODt6xuCVVd5DczJJ3DUzxkR
	 avtbEe2G4GL8FIJdB0lWQgFRWrkrq0Wj/6w5fm6xmMWu1K7b0JkqYLS2tn7H3j03qs
	 apSBv5tzIgHow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACFABCD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 16:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178033287369.3685.16224904033053677164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c96969043a633d7aff210930f94ec8a63db826b50a543da26697862d87175d1d
Date: Mon, 01 Jun 2026 16:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780332873
