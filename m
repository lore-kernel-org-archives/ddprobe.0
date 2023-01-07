Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC916A47
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 18:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89CD2C433D2
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 18:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673116887;
	bh=PfeHhQCf5ISWT5lKfD1/k+3XzRPVItRB5Pj+ZOTA/MQ=;
	h=To:Subject:From:Date:From;
	b=MK0bzvzeloH0vXWTRyKwTehBNiN75gOLYMoaW1EaS8JUlUT1WkAJLIc9GsbPeNHbY
	 ESy5f1T8Gm02Vga8hUFeg213zOgG7yA4TFosjocE/rqJNmR6BjaQRouN1AFjh9vw5I
	 +hSXtoPWNtGlSiEKpuYudDuyrdoyz+K4KS6CGkVnhzEFVGlyW1FyqFq0amzUOJekzh
	 w1W4XAUipxdN8GmBj9Fm6vk0BK0iuScybUUkKWy6WjoaxvdiSQliDl79hFJQbUtWAm
	 WWjUu5nvxav3wR/ZpCbuT3UKCf2mmTA7mnYV5eEoFaKBZC2u/7ubl03uJ0SxDiDHDW
	 CjCgmRj5prMaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B3A3C54EBC
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 18:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167311688742.28967.14368154587662865582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 341d211a82c4f3b0930a899a41a6f0fef679436fee301e4f6d4ef0102016290b
Date: Sat, 07 Jan 2023 18:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673116887
