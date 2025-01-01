Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F202119
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735714554; cv=none; b=XqCq2Ixp+47PCNSGG0o0h1jb2G1jos8JTMo3CIkfN4HU3M4ymhwXCHQtfZ+E80B2o/yxWRSDVaorIKVQGGTAFaR2pfFBRZ+Yd+fOUEYAF8vfOiIzDijXSzU2QCKRMi2qAB26jIdSv8s/zMlijVA8oUv7ZIj7GstN3pFs6lOzFgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735714554; c=relaxed/simple;
	bh=TVwvqobj+4NEoFPFOB3d8CVeg0Qmxuf6gBtfDNAawNE=;
	h=To:Subject:From:Message-Id:Date; b=VX8LevE7KXjBUYXU4HvT8DriZOzj9355gsLuKBLCxZiB5qNJGEdA1fofVTfTk1JHK4hFHLyRJE9AfveinFnJVsw80ivZI2oRXJq6uCdMzjc8BJITJPIcoCHryQeW8Z8kYV8wj2Pa4IwrQCAY1XCywxNGYV6WpmfcxcFhYNkcubo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O0d5bYXy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O0d5bYXy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF373C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735714553;
	bh=TVwvqobj+4NEoFPFOB3d8CVeg0Qmxuf6gBtfDNAawNE=;
	h=To:Subject:From:Date:From;
	b=O0d5bYXy8P4Tm6zvhVLMYOAB8A70HRWc1+sCCjSyLDkjLsXQjNBM+qpQ2oQDmT9FF
	 stG0OGKSJ65WRxOgZEpEV5mH4LFfuVaXzb59BxRVMBIKtmQC8ci4my9PS4VothQ4Oc
	 HYmB3OSR8t/ha7iNmJf/HZ3SmiiDHtQQbB7Tdcri/qzno9U3QjscT+nq4dFK4iAkZv
	 X6xQ5RmkbVj4UOCAsWaKPUJqOVphzQrtxm3HqQb95aaaOGINKvbCw+9sgTCHRJawn8
	 mB7turcigxTJCotfKeE9+VUoXYpTh6NSmyE5JGXOnz7epZBNgVgTrZXU+xjoKY5CiH
	 Z1IpKs7Ia8hdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 998E5E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173571455358.27115.9758594445731853560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a78734e02ec3ebbea4daf5d0bca6f2c4e6eca5b1739eb29a606c9875404deeb
Date: Wed, 01 Jan 2025 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735714553
