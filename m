Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9EF0363
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 01:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D669C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 01:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670634087;
	bh=Qg70s2CtxWoP0SR6+d44NrUckiO9TtKJIWwI26APA/c=;
	h=To:Subject:From:Date:From;
	b=LVBoh/bE4uHVZ1qqX4ptfp/TyZfsO8ZURS7FDdGCPGSzvRZM+tnNEt7nsCBZxpz94
	 5kWAKkYF/9c5OSTcS+zYzZL7cEHeXyybDDFeFBi0seNmv4hXgerKK8qynNCkkl6LbN
	 DMHUbiKeD55FICHvtEeoBjwzUzpiDYKEKdbF0iThrcj+IJonKtu+YM7x5JCQ6aH8dy
	 lCoEGz5YEX2g36j8V+LxL5YSryovS0kkZhNJehzd29Vs5+hMnpW7AbiJZujGUYL52z
	 HC508MZ2IJ8e4HX5WdfMYU04PRvQVbBwXdKhG54uBXloZKO8PYxXVjBd/EgfPPsaXK
	 /XdCcxz/BN3jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 692F1C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 01:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167063408741.9370.2834727352708739585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b96191ddd93fff328a2dededbef0b60023bf11b1d30b6a16a73b9b214c6185a2
Date: Sat, 10 Dec 2022 01:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670634087
