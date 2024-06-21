Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A2AF42045
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 21:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719004343; cv=none; b=do1GiZ6g1ysWn+uwvmChGHVHg9nlYm7fWs2GcdTwfW7pRMbhVFq72rGgVV0gQ9ly13ezsBnOlY5VogKYmI+2LHfecBwKTtQRm4MVimqmO1XR4wlbplTE1+20FvD0icCAdEERwrHeiipbeeFO/glVjbHnqW3OM3up/oV4My3oG0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719004343; c=relaxed/simple;
	bh=SK42R3kTobUaiVGUeaFM+eNcyzANerhfM3u6a//WWDE=;
	h=To:Subject:From:Message-Id:Date; b=Lk4w/BgFPUzr2y29BqTriub+IFe9NbgnDygNaCI4Xn8hsVXk/WmR4NbpbwPMhd3VjwGOBv13zZJWrpGlMfwZ6+7Zoa1+HvEsMCjNqri90Bkx9jo73xEZYrqHJHbxlre8Ab8mD4iHfv4C1s1jUKIewT6yOVu2m6RY6Ny+FPQNkeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VDi6q3w9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VDi6q3w9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04192C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 21:12:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719004343;
	bh=SK42R3kTobUaiVGUeaFM+eNcyzANerhfM3u6a//WWDE=;
	h=To:Subject:From:Date:From;
	b=VDi6q3w9ULz7y5Ko3ivukK+ES5EiYtlDOCf8RImW2C9SSKCrM0BsvdXON1JYBhnzK
	 VMOY6DC7wMsSeOenm73m9vzydJ+Aupb9Ksylo0MxZ+Fkszj9RrwYONiGBVnOhciip7
	 ZTmPBYHzQCExOmLyp7GcE2owjvz/5iCL05R7kJ7KuvuJin784hai5y4zIM86UdkuNm
	 Cs540TJFgxK0ivMDQOeSjLiXY+QW9TWR6AE+S8Ominv0Haj24v2BmDix3QdvruruRu
	 pTJrqB8cMMPwx5oRocvemk1y3Sdkul6iilikuOe4Zk6jB+t1EbC79skPVbfTVfAWZR
	 Q0E60lR8IXhUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCA04C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 21:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171900434284.21884.652662025640649335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4def5116d4f3b22d90d1f47951a4ef83f7a79c6f1c05385c6e75b36643ee79f
Date: Fri, 21 Jun 2024 21:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719004342
