Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F04D8D269
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 08:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f8XKUzLy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F3A8C433C7
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 08:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699606096;
	bh=3uAHIEx5lkMKRBc/5IzZ+jpQ+sYqYrvCFqJCqotKM60=;
	h=To:Subject:From:Date:From;
	b=f8XKUzLyZZaRhe4SxFNDvBq27u55YSDeQY25MsD9iik7H8kGfSP7Abg0zCMw0PaNv
	 xkaU9xPqyCptiAdTFbEXdoTbUXOBXzqweI/gTgxanJCI0CAJMNBrY5VQUw/HAR+lj3
	 QSz8g5jQtNgwIQIxqGwS5rk4UmxF/14add2bZd3CChUt/jBng+w+QiOE2WUyMvDM3x
	 oPWTIJ/nW183aBAo2UoIbDzYWruOMciWA+xkyJkWRoBQSHGoLIhQYyHMnGnaC3SjIT
	 NUU16pIj325L45uC2v/bDJHDHEmsBFPPXM1Q7Vpt9QV8dK+HRAXOsgfMvFd/zEAzvA
	 eUWWNcfDU52wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60A5AC4332F
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 08:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169960609638.10811.5021947421085333045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0dc252d33ca5ce1d65fd212ca9190420d31af2664a5a2559b9ebc878d6f61f9
Date: Fri, 10 Nov 2023 08:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699606096
