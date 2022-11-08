Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE7FE28EE
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 13:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73E7CC433C1
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 13:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667914254;
	bh=i/74DyOAAiVs1LeGNlomK3G4w7q5AmcwZig/QvobfEM=;
	h=To:Subject:From:Date:From;
	b=ZM/z6g1ollcWhEghq6IYqhlq2xszz2lqK1PAhwGL6S38Hm1zgRIXAhji3zXWB5W2f
	 nNoPMefRsA5T06lQ/6Pb0vdXOshbhoZciik/r27+RGx5Dy8L99Znrgm7NORGzIs6kG
	 9yykafpuLv+xdFIUVVIQaOjxSn6jMxiRsGJqtrhYVYusx+LVk7+TgRYGYvhEBXVV7h
	 L8g+KBB1xD2dr8dIRUraiy2HBpJG/k/wvHduB1KjzZRsfKuaQ3614gHTZ+opxniDBC
	 U7Dn4CeSMliiO/WHprcAzAx/SwO/tZciuCw5o3uGh/C8wVmvqg6IC/b4HkJjoTSBLx
	 +vEcziqODrANw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BC25C4332F
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 13:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166791425436.20393.13040499556195046903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7eb938973928360535b157d82cd21554a8f515304c94d85685160a4c65a680b
Date: Tue, 08 Nov 2022 13:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667914254
