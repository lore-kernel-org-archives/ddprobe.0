Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EFF31868
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 12:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C03ABC433F0
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 12:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673008287;
	bh=EbnWKs6qUVaPBwIwPM6RpW3esjPeQF/Uaz/An48tT0A=;
	h=To:Subject:From:Date:From;
	b=HFKxCS/QwrnSOUiiJfO+6J60yyZC7xBiGewODVpxAToRZj5aX4vY8cgXlhQDmhqMs
	 idBgx7T6n7hiTsM0JcORHOeYhfs8sD/ry9aGPbpOZghk1gYXvPyO4kp72m9XwMkiGz
	 xi2uOVRAKA+9ubYvPOlRGWiCdXEqKUmuPBohvv3SfuuwSkAVHNHvHDY7zssrSY+VPU
	 AuC+uCl2T/AYzxFlXefYIcJpvjbIfGYpeBkN/nR2m4diqoNZcc1QkfAyJfR6YALYEL
	 nE6fTpGgrDlNRSHT04u5UKHQiVVo+Y36Pbu9DrqZsubLx8S1fR1rrLidx/QWsO8HW4
	 6Ilt0IFaaRGUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C79C4708D
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 12:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167300828760.13944.12127748426864068115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d35c75a593eef317ed819b106a06ca5f878c430477c069fd21ef80219a57095
Date: Fri, 06 Jan 2023 12:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673008287
