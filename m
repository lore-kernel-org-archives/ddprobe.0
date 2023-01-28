Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF07192
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 20:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1EA8C433EF
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 20:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674937985;
	bh=JCTX0EHY/APQrq+iGPsO5OtcOGWen/wwW6BlnphVFPM=;
	h=To:Subject:From:Date:From;
	b=YQ6C8PKoNPKpmZPgIYRKd8RZwzwKmsZoF1z248UoqwwF1c04pgarPwFX7KdjOZu/I
	 lpF/58SYMq9D5/jzq0KnD9EPfxTb8qcTIxDH08GpJ2vZb63XezmjUMrOdJ/Ho2Akut
	 gYFjR75zULQmoo/Dhh/c7HQuSPTg7r5NRSOT0GL9auZnUJVV0D262azEA9L/zuH6ZA
	 utmTT/+V3LLFhNl2R+uRwH5x0ohIpMj+gpH2zKyNFt/8zn3QgN0ZsyTC5lHoz3aHWR
	 t/5C7M7R/e7QIgfHRk1KmGZ/B5mArPotsxL+UA272+DTpEbFtdLMzevPiTfZCQfa0r
	 GQmsL3emHNT5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3FEFC27C76
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 20:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167493798578.30083.6126871540544144067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cb085687d397bfd14b20c805d092b28d8a8f7a77028e25742f790cad1472a89
Date: Sat, 28 Jan 2023 20:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674937985
