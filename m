Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233C33C4B83
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 12:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783774714; cv=none; b=E3qU5eCXLN0DYSAo/cFgTKf2UYrod/oRxDuQh8FxBshFk6vLDroXnU2sTTGcxCyuWfylXnfYdtX+PP+oT+wXMInNIVUU7mtDO08eQfIGRSSYFliFjf7kGgWioUk+eOlt9ZJ4Adp1ZXi36eZjem0jsVSR6mBwGnQvHF+ud24baVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783774714; c=relaxed/simple;
	bh=f2AEfW4Yh90mE1XqP5DiZunIWFXD2CIsLKy0Hauvq2o=;
	h=To:Subject:From:Message-Id:Date; b=U3EQxJFeiYqqRiQTjS4XSAZfc9IPGK7UlyFAHhiTJrpW4fReN7W17H9EJixw7jD6wBzBD/hwSVACPT5+q/POZWK+Dv1RS1IZ23lmsQj8Sb2lMHo4ceLJcizu/QxIJHCO/bj08cf3FifwimoJcZM/2ZBOhQEPiaqNA3xft2lNCbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QIpM8L+U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QIpM8L+U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCEECC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 12:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783774713;
	bh=f2AEfW4Yh90mE1XqP5DiZunIWFXD2CIsLKy0Hauvq2o=;
	h=To:Subject:From:Date:From;
	b=QIpM8L+UFR+XINDe8P4fEvJYor1//onJhxHlyQqxXV4goHQXqcNx7dNUobHpH4OE8
	 hICIsVbNEBtSlwdiNGodZUwAQAryHgkz5zSHd+7Myd26jQ2QRPuIoNOSEWVv8OIcTC
	 2L4Q59LBaVRcaZyz+tlo9fruu6Y5Xu/GWhJdUIAX5lTZ0sn0lcbrMDXxYLTtSp0gk7
	 ApHdsJYwep5tz4i42lEf+C9JCMqqeaBkYlsIJMd1sVEzzAUv0s8cZdRXVm+YJTjIUS
	 cbHnXUBXIPWIYhZyiRPCZDTFknm4kn8uMjyvlNxTBxNd8znZTCaX7HUT4V249Zfkpj
	 kcZXm5ujZcibw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98B1C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 12:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178377471368.507.1507952981340198600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3963ab93f876951546c533983eb891a0eb4163e4fb1b91ee8f5053140db8871c
Date: Sat, 11 Jul 2026 12:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783774713
