Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFA03175A60
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 08:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778920833; cv=none; b=BajSuECwUdivTZqB8S38DxfTLoefE4O57ch/y+YFtDOZtwm6XCVcmcjqlzzwsEK9Rc8KEqTiFn87oXoQ+3R9VHOGg5lOk2XSbAS6T0FFcrbmfkaYTN2ycYaewt78bMIc4YjlXlALom1aS+zDHKZM9QkcHn8lVu4R6/Ojz5jVxAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778920833; c=relaxed/simple;
	bh=W9xdP81hsHVTwCGiwFHIyAuvNDvHSTOTgoTPJ4KvI6c=;
	h=To:Subject:From:Message-Id:Date; b=RwdOyR+Tij64o/F94IOk0302ET6VLeyysHH90/oY1s9EBs3V+36lxFCDa6aJwo4P1jRh7jswmYwj+cRVRF0Aq5ADPk/72k7V769SKMCCY8J2BM4ZUZgmyGDBw7F4Jiag/qQOkqOIVroQxKYPXCP7wdqvqVzwm8xjGRmNGWew1/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IEXfO+/V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IEXfO+/V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2824C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778920833;
	bh=W9xdP81hsHVTwCGiwFHIyAuvNDvHSTOTgoTPJ4KvI6c=;
	h=To:Subject:From:Date:From;
	b=IEXfO+/VPFofHeVivbUiNUuc4KekSu40J+VXIrPt7UZG0MVSI+GDDxmFXRiJ1bakT
	 ZKSYsyegkmBK0pkMBqZL/fNzNZEq0CJ7v6ocnqbfIH90mQeJYYnXrOxbps4F7wBeL3
	 MX2EIzWJQ3iUMBJuqeJlj+obu4BVNGqYpuONvQ9sbWKCLKw30Iof4p0/nHLdcyLHNs
	 cRqPKkTDS64zZscjMlzg0iOX9FiSiSCO5sNkTWGpFtTq25e5TH+QKD60IocEH4czb8
	 lnEEN0GNsCku9s+hnU7zsbUjH76zLdlUuZj+c+wv9qV7TOnuxrmV7rxpkDCVtyBaFk
	 huMK9K6S/EL/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F93CD4F25
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177892083371.10163.7815064700950453034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c8c9a86ba35333db8ba42296a47c7e20f76d3c98824433006a0bf93e444db71
Date: Sat, 16 May 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778920833
