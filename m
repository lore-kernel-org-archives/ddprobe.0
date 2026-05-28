Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0548D30DD3C
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 16:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779984754; cv=none; b=s4VFAk0E9VRugkJA0sQAgIH1WLJNu+ki0EQiiwCZYKBQmUvIO8cQP+2Bi0fJH0j4aKCLHyrjdGSs5CZyXlWph9YCM3nH8yV3RX+nV/J2u412pS/UAuIzLFeF3TgaPvzee2CuuZtxYpBzMUs9zGm3vVPn5m+Y+J5yHvH/lY3AmCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779984754; c=relaxed/simple;
	bh=d2x0oFcmrMDiF8cRyiQ/Eo3Z+5xFl3rnH7v66vyb4b4=;
	h=To:Subject:From:Message-Id:Date; b=MejaSNTOSYfqf5VEivcQjhd/k0Sr0eTOEIPQ90UPWe0eWZbKYFejznCLpjPJVfunrjuwTItAAxlj2llfUHUL0YYfjlmwQm6nfBGuPVVvhUXUb4Iet1vXfNQEJLpoWY4lih1wxqNllvuqpZ0EiVVfSXGz9byH9gXUwRjD2FSW2SI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z2XpPVMg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z2XpPVMg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC452C2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 16:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779984753;
	bh=d2x0oFcmrMDiF8cRyiQ/Eo3Z+5xFl3rnH7v66vyb4b4=;
	h=To:Subject:From:Date:From;
	b=Z2XpPVMgLeQu0dtZC0JaAfU5fVahZ4oJb35gDgMnO5IEOO+7QnAqegYoGsrImdzEC
	 65AZXoKqQ6Z/7MWbnRGh2GqXEw1YYyg78LtVrykObiFj/aFtVoXTeXJ69s9WyCBthE
	 ido1SO5hE8zHaLE7qeq6TMxMFdBrID631zv3eTB9i/YpquCa3MMYVJ+WI3E5b1LrZF
	 uEu819ZfsBP0wjyIPPLZxpaXA4+JsgGYahkc6MyTpWsbmhw0WEUbN1M0IBTg3pcxT5
	 kNTqfqugJokD4EK3QMU6W7fNrg+K9XK+whpxk/rJ9f3hoy0lpiVNNMJVyHU6gcCowp
	 OVF0aQvRxMwmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7EC2CD4F54
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 16:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177998475368.5674.5483992393685664573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c21586debc66b8e29cf8b2d257e1e279034c3b1812c108f88048a5fd3778dbb
Date: Thu, 28 May 2026 16:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779984753
