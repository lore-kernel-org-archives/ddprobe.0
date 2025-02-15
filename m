Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4870113AD18
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 17:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739639934; cv=none; b=u57HUYmBOwk6s44E/Q58SW08FdFrV7YfL1SkU4aijGViIfWAWiGtBUUy1+0jUJwK+Jd5m0cxfXmEsF0Agm2eQ5VHT7eOmdyaZnwYxJVgbIBIXVXn7zuwh62464Vw1H8hr9zptACwfSeIyFIZzUE9JXOv9Lc2D8bXmqmapRO/UOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739639934; c=relaxed/simple;
	bh=2AtghQsuSLx7qMJKwc7REce5/mTK2NBFqumt1VwM6bc=;
	h=To:Subject:From:Message-Id:Date; b=Ez/7sJXcdBON7+mrvPFkaiK+Up/3yLsn7/brlVdMN2UNA2YVOLQxlwBN9XkEGEcRT6TAHEpd9KDCXi7zQEfRGzliUgT3xBjwnqh7t7qgvJvcVQAA2RUa0/P7ICrIyFnJfQOY1O5SzLAFJB7WB9cDXfCeikGQ8sVGnVDAlwk5bH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HqYC109p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HqYC109p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC3D4C4CEDF
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 17:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739639933;
	bh=2AtghQsuSLx7qMJKwc7REce5/mTK2NBFqumt1VwM6bc=;
	h=To:Subject:From:Date:From;
	b=HqYC109pe+JmknWEOHx3zjybKmRaf1NS4p/Ruln0QvjA3sPqVpyGWhjUPJ/7kE48B
	 FMHo4PaULX6qkvBE3bh38cCNrvladK+C+ZiFf1H9jiByI6StZatxY2ncfH/2TX49hp
	 X8MK3JwsEA1xhfBxXKGoyjGeHjn8l3oX4PqS1RZ10QxsIxxD+arkXDwNk4Tjt8sdIk
	 s8pNaOjolTx0b0i05g31LyAU/HrV4owjILB8af9XTqsnYrcJAzVqcF1KRVxsTDpRZ4
	 9A75do1Yj6rvJyHIdVXSevPB8CZmwzxFY8869sV9MwFzBLSPSAlLWJwPM7EF1tfK7r
	 QIvHIBzf7ZkEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8130C021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 17:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173963993367.21011.5311357399467323421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa1999393fef5381c14de68fc0468a182f82ba92e21bc2f76212c4eaf00ccbc6
Date: Sat, 15 Feb 2025 17:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739639933
