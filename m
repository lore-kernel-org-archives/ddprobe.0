Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44FA915493
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 18:02:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4FA0C433C7
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 18:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690567328;
	bh=AcjIi80x5/8EcaqQZDO8smk1KGdbYSduZeryVh2jmoI=;
	h=To:Subject:From:Date:From;
	b=kAZ4ixThyXlT965qvkwT6GrBT2j1KToS5dqNkbH9b46qkVFCCjksnqvxO64ylIKn1
	 joLsNxdY29xdQfS8nBJ0TIMMBhwbnJdhIfis+vnPzWarfqTIHl+GjPybAYjIHvqXmQ
	 /RvrzZVEsGk9Vvc7fqnc3cPS1xU28pWEA0LW4w5ji181ykT+4CnfTKYf55pVO+Bg/p
	 P/NangGN3++lg7KBL/FWie64i8nv9U7zdqLNNriF6S5DMYOVZocPLltiB5IQ90bAR4
	 sMMKYHh5/Sv04o2j7JvH/1dh/O5PqR7K4USc38P3dFb9FqaVRfMwZ5E65E2aGxule4
	 pND1z50TFPQJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6A03C0015E
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 18:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169056732867.12301.2060431945518983032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb8bed327917b56f09ac60d33f668ce1955c62c7e3de9ebacca984976295d31e
Date: Fri, 28 Jul 2023 18:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690567328
