Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C9A21380
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 04:52:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB8AC433C0
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 04:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687236728;
	bh=mpS5NVCg3uvjVdhBpLuBWsSJIvIbNeWwhffKjW7BnbE=;
	h=To:Subject:From:Date:From;
	b=m3YU0+f6nU5LgFn+/sSmnjMKWLZJUkZUPkWH/yrl20S3eQmR/LUAaVAhEf246hQ10
	 yIqfLD+Jckc7v9m5LU0TvpcsJRMQ/vvfOExKg4k42cNqK/j43L2qT3RUjoZlJuWOMr
	 2VhvAm3n0BXMfGc9CqNRMyGtnqqS+z4Pn3sw8nNpNcF3GLGvm0iSQKXLGi2dzAV5TM
	 hDq2ZweopkfWwsfjLoVihEsUxDR6dmeqsFnnynUFmX5Ir+KHkmLm5zAHYVLxN2H1Tn
	 s0kyPgdeSpIfVT7EHDTcxf7rveJfAYCV+FKVePh/tYh2yWW+VOjC49/KwkCAYnqcCm
	 3rUIV0e/UlTnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7A0DEB64DB
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 04:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168723672867.24935.2204717426360006317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35dc03faa812e1600456caefbd830b0371ee43a225f503b7a6e3420c2979fb48
Date: Tue, 20 Jun 2023 04:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687236728
