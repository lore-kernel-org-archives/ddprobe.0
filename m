Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC088C0B
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 19:10:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3638C433D2
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 19:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677006606;
	bh=/yFxOdCH0GSdMSfcX33RpPqHDg4CwDfzHMXUQYy/HSI=;
	h=To:Subject:From:Date:From;
	b=EosOirMhJF0s1d20T5VJWkmFKGiArXpXhqFBwOkt6el5+ytoVjDR4LNDg80ptTLSW
	 r80yObeFwlLi1VieZqWBGKfXQJUfP9+8OSUlu70DBDFRfD+J3GirVTRDEUf8yoSkd9
	 Opvl0SB0FK6k2gTxlcALH9VvHF8UX2TJOEKXM/BqIT2kXaQwJqjjbY/drUeF1uC2zG
	 4p8YQIxQOd66QXqhD5VD6rE0XB4Ds5nacEc+Se7uTxd2+/CPKjIruKJW4MCmO17zjW
	 2RHAM0UZ7P+u6e2QsWmHwXIYGOy4Bh+pcjWIs71LDc6d23YycV0nT0BpeWI3vw5RmU
	 JW8/8zmrHB/wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5D6BC61DA3
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 19:10:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167700660585.19797.9015347818818684664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb504c2cc40d40c8c253125079c93be5ba683db5a5cb3d4a8aac45c6a1e30f0f
Date: Tue, 21 Feb 2023 19:10:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677006605
