Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76FF6EBE
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 12:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3BF7C433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 12:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686572585;
	bh=lb51bKTtsjQm3zeOH98DVqg8fVk6z2QUrN+vEfbdSq8=;
	h=To:Subject:From:Date:From;
	b=tMT3aaUPOjFy5F+XpoGHm9Z2z9nhbCdr2Ag2dkB5aYEiZGi4++HpK3wOTyXCZnHoM
	 H7JxYwaAQ+3sa0h6X6MHuwVF/+ahGx8YPAEcLegATf1n//f/lomCUZ76Cjaj88T3hI
	 HxYavSzigmyI3Gep1hDyl5TQO7LHufyvnPJ/FxR9qzGP/JB556YkOB2zKxgOMO2o1n
	 7z35T0Opg5017cwEJ8WrcQw+lF2P2N6uFrslTui1pVi+tLK/AiXPjy6YlihYbOqVze
	 0iM4VNnO+iPOECNV8Z5+dJiHPfzfrLrqge/iJISdQJdy2MLSunLEd01Zku5657pr0I
	 eJljcITXL0uMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE0E5C7EE25
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 12:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168657258575.4418.7406838593618192118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4af0e8e47e48463818447cacb23f289bd76fe8c6af2dcf6da6f8ca12156e0ea4
Date: Mon, 12 Jun 2023 12:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686572585
