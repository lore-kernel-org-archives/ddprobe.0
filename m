Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18DC5318EFA
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 21:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774040694; cv=none; b=mB7wQ7ZR6KfKHleP26zH/ZO9TkvW//c8Asvutt1OzVSYBuKnnoTZzM4n+TBxzFXJ9fjqe+y+PauX0IxPS3OPIkIbTS0+f1MjCAo3A4Q2B1yKaV0KZNU7H5c4sxBdRE5nHvvo1JbANnk0zT4Bnik45ELz5tHGPerxJ8YKGD+1qPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774040694; c=relaxed/simple;
	bh=IqxKF2eaPtP77gCSt5PlL1Q9jZ7zMI+WDg0KNZmZrHM=;
	h=To:Subject:From:Message-Id:Date; b=OejztyFM5R84jT0YAbiSoHSVDFkxFv1F4AW3hFX4GN2OEfsIs5IqsKsnzkIOZlm8b9qikneHEONpV4IO2avTQqWnbz8CbHGqjmz8ZIw8oX/Nvhje9jdYjg+hD62eZgnwsUYxUZmXDV4ZPregCPbLRpUyYymXiD1JXjF6r7Bj0M8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cLw+g17M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cLw+g17M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33A3C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 21:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774040693;
	bh=IqxKF2eaPtP77gCSt5PlL1Q9jZ7zMI+WDg0KNZmZrHM=;
	h=To:Subject:From:Date:From;
	b=cLw+g17M+oiaydZybhuXa5Y9uovqy8lQJtTk0unB13uMU6wI5RHmHC4haMFFpUV1B
	 1MENE+TRBBL9xxF+1SvrlkL+v82NdNifEuOjoK7vOoK1OCCzu/jd5JigyvGUfMkQaD
	 sR+jumdru4JRURLcg13/txyAu5m1zDf9BZODqHfKzLB/V0uPoThzgVEw33IthL4wiG
	 raM+QrqCkmYjSOHZ2+lRC4xDJETu8evsrMUv73exfmppZ2jWFOkzI16MXA83WtGqyR
	 Wq+//tS/jcLNjTvCt5GzQGbTpX97juJhWK16RCIjJty2Lmufvjo1MIS4FhiHdr0edR
	 YZsD7W/UW+o4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908C01099B3F
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 21:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177404069358.24536.12624842752586414228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca95bc5f486638341eb38584c772aa708e07505d289a88ba6ecf27913c1d1c59
Date: Fri, 20 Mar 2026 21:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774040693
