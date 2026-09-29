Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13FD935C19B
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790711434; cv=none; b=Rr6ecAQBfyfc4CDTWWu1Uyu5WuEAqechTl46ba5nLbnV6HROUk2wj84ixMGjAHHHJNRxH/OUUaIKgvkAlMRPq4QDMemwlM+odjw7tzFT82gojdXFa1GnConwqz0bJOlK+9O+mp19k2GQxLczBt2KbM2wLOW/ASDDoB7WBjNdWb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790711434; c=relaxed/simple;
	bh=UBleU+EmhedZS3A3jn/J4alVmqAVgTrjZl9V7autNFI=;
	h=To:Subject:From:Message-Id:Date; b=KPb6XTdhESLxOvtJjgAWQuYF8DbZJtdsB0VeEPuzUYk8jmuPMnrMnWdCWxHIdy9xXkOPsln3vzeN9MsUdU4UVbG8gdyyIx+ixUNVpkCdq+5v70H0Y9HqsE+m/q+hFIsLosLrsVBK8ltcDaX8RU5D46zXcQIdKS5Bxp1aCNDCgww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oPY8n1rJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oPY8n1rJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC9F6C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790711433;
	bh=UBleU+EmhedZS3A3jn/J4alVmqAVgTrjZl9V7autNFI=;
	h=To:Subject:From:Date:From;
	b=oPY8n1rJcKk44P+3Jv1men3sJjAs4dPRE0jBbEfMK4n6gHPH/LuFahLPE41ZRAcP/
	 GVMqU85i/Ghm7Zeh3qyZbIInYYlhMiRtP/i2odlgeR9Fk63cqvkAeYuRTpTbJznTzv
	 w5LA9VeupDHQL/9xznWWlOqrJ96SJhoxqmngSVGrrlVuG24Ch3KuL3zlcKJQOLnHNR
	 3lhiVWVThHQ5D5XRF4ciIrF7EGJsxWwDOXrhpsEYKpnSink7X//Dgb3ctFOxAAobXn
	 aRik6VHOZI4d4SPHnywN13eoPwmCDtbyzl/EjO21BrtLHxbvuYveVauFg9y2Fz/1PM
	 pAPYxqLMy4Eow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B8ACA5FA7
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179071143368.14123.981124347974187886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9886f8cb5554019d81f819c146c350a390457df346bc650b770d254cefbf0f31
Date: Tue, 29 Sep 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790711433
