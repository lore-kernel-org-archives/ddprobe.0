Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6088028504D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 04:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782101794; cv=none; b=phVBasNBYB8QpWNQQjes1GZQXs2G7s23OdDPho1f9K12Ehldg88JaSIuP0FWuLqAfzh0EIY0NReKVBmfgZKCZUoXAUqzeH2lnB/KIxdAhVyD7a+qZzWR+5Q5bZfdc/qvNmDg9YF1rmKM3GdWuur1XJbLIehjKEHHujb3UpGIFHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782101794; c=relaxed/simple;
	bh=0wt2440/E5IGLTy9o57Rqm48VAxIDDsWzF2/LFUmxIE=;
	h=To:Subject:From:Message-Id:Date; b=b/wVcT/cg/ng0mOzrdSqp1WJ3SJox0xRMDjPP7ndlYu9j4I0rZ5JbuJFfIVeb83AaiAhQVOFfTVubGSSDIAnemVWieZddgjla7ZwZG4cCnC95Skz7pl1mZUDSXbAODYSGKernFE/JIoMN/lTnJ3SLyqkuljxbX51fmF/rBLJYUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZDaVqjfu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZDaVqjfu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 141D2C2BCC6
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 04:16:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782101794;
	bh=0wt2440/E5IGLTy9o57Rqm48VAxIDDsWzF2/LFUmxIE=;
	h=To:Subject:From:Date:From;
	b=ZDaVqjfue6hJqeh0BYe8eYDHUK7xUGGAzoveDLLrcjm104zLrYogUDEus1mwx5lzG
	 L2EIt/a51G3JAY+MILIk2n6vG+XHnsdxadZ8W1/95JjlwUhHi7e6osr+gZYgCDcjiO
	 9BgV/xr91rGNTWvWQdOETrUDwi7oQRhrdlcdmdAspFHPg9QgUHRCz2oROahbmIjU/L
	 Mpn0agsS1M2EcmVZxIAjCLGd22/qd2a6u7JzE9kHE6JtNWattNJ08pm4j12h8M5IWK
	 +yC/NwbuzDlVKFOJ7GFikcLusK6grPUmq/fobxsYEKlYW8grYgpijzGUWdPzipavKK
	 EwR3Pe3tveJyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E48C2CDB46F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 04:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178210179389.18389.2547794509348703675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbd852aabc530555d1701cdd8fd7e8ee462c593a88c36d7275c5da805e486779
Date: Mon, 22 Jun 2026 04:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782101793
