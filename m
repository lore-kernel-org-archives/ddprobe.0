Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB2B42E821
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 14:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ngpIaHkI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F43FC433C8
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 14:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702477096;
	bh=AA3e9o5yAwLUne9TcrdnmjgX8i7DXSlnOOAR0i3So3o=;
	h=To:Subject:From:Date:From;
	b=ngpIaHkI91PNmgnrK5KNqrywAn6nrvbBNpay75IFx+UT1hP7eng9JN21Yj7ymBIKR
	 LuEdTwC6u0Pj0nv0lMLVEtobQVtDH8rCb+MV2rmg0UrWS0d61XgbXJHGb8um2FJUl4
	 ML76WBIZxBMM0umNGBW7hRGmYM9KS2GaQvowf8xprBqoSOmUTLs99NQnyajeYcmTR6
	 GdnFV9fttrGSrlUBCW8DmNcxww3rIunw5bbYkdolJejTInQv57Rc86SbcNV8oJXJlM
	 djXfTvoB0zzle0aFjTQw/Sw6F+RgXsN/gt+N074UXLcq9DUbGcJrs4lICF+stz7Xq9
	 0pAwJ7kufo1qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 630F2C4167B
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 14:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170247709639.17199.15921454765494164304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8aa310f72530996d242fd36f51fb55a8897d58ba8f12451ca271d9b112bf10c
Date: Wed, 13 Dec 2023 14:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702477096
