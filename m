Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 661D82CA7
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 14:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716042143; cv=none; b=Cy/3gtha2/ZgzCOXf/Kby7GA9EwjOuVnQPK2ObDgdMbzgQKYtK7SPaie1ed6WK0mesS4YXaqA6khsDqtYnpEfxjIcDQsjKbZz7mPUu1d3PeOgrjZPUXhEXZGKPbvVR3CVpxENAZK6jzXvAgcOwUWBtTjsu2w7MM0DgxZeTJeXug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716042143; c=relaxed/simple;
	bh=YZ1R3Gohpgl6hc5EAbdkWt9bz3w18zEZDYHXj+yNCBE=;
	h=To:Subject:From:Message-Id:Date; b=WVepiY9xTQQcrrLMT9QS8g+3t+Q2+cyCv/fMmcLFMFPmgMYrC1vWTWaqAIx8/jHwWDI69Oo9CrTK6mZYXp6dgMLS1TXskiUP2H+wEGWJ8QsPKZEKBLkrInvQ3pNfOGLahu9Jijw7SFjqKsdIDkoFiWLcmrCAA0o/3ivEO1b/ygA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vG4n2sEp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vG4n2sEp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6619C113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 14:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716042142;
	bh=YZ1R3Gohpgl6hc5EAbdkWt9bz3w18zEZDYHXj+yNCBE=;
	h=To:Subject:From:Date:From;
	b=vG4n2sEpNQ9gM3h9TwPm4n+R9U/YiqYjRQUyfPoYNRiOHGwUDSXvm0zNDnRZdfbbh
	 XuZHGpXOgyayHPZvKz+YGoHYB2kHvJNv3mAmFAyzi2H702w5HxCzipPZIjBYPIV47R
	 NCI/3U33V7xY6OqYg3IA9fZIyUEcuZ7Krd95B36haQlTGVMaTiwNm+XRSk5McKv1p1
	 Js85BeXtp7WQd5B/iENK3Asz6BrT9iGWKZwcODDKM2ivZesS/wQvK4ZJ85CDip4Esf
	 gaW6GStxLnUtW1OOhQVxz5ElkvTTuEeaCeOecubqfkdlSLT7DpxGsFWtRZKqKZ+p4J
	 W/bHq6fnaqyDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEF8BC25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 14:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171604214278.26875.15246666310197652926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 228b246d9dd2e892317d245e25610b065a9b5b2cd755bb0ce4bf2e9f27501b2b
Date: Sat, 18 May 2024 14:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716042142
