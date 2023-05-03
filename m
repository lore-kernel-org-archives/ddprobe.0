Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3031E7C
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 00:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCCC8C433D2
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 00:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683072425;
	bh=Sw2DMiOpywnZ1RnlJVUMYVWDJhHFk4gMxUNtPlN65HY=;
	h=To:Subject:From:Date:From;
	b=l0Yu2upJxnXKwaoeRAMN6PiYdBcYzEJombx3CIbVFWJ2d29MAMXuicP8Ptk/x1zsk
	 Yi3QgiUFwKpwT+zCvQGtMMXKzNCCLDuQvxsk8cu+qgKNVzZPqBTd6MtCnikl/nUAAL
	 JI+apRKmgJsDalT8cOolcvp4R8z41qELv0WkXNTenrrbZycQB/Mtw6xyU4P/2Qc9lp
	 +Z/d6Smz5RLVzNgFUN3TMLuqMzLXqe5A32YUyScWnEPfZypZuK+7NqeHQOCsURLdsf
	 VItylU0mFgnvkMdYWcsJqUPnY4s6hzTOf0hJBTCbHHPJbKSMZTklyopbZ4XAPA0NTg
	 n42PnVIN+LIiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBD8CC77B78
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 00:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168307242575.25106.6544673487147762726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bec624ce3233d7b7980e465488db923148d508e4f809fb4ca1aebef645ae26fd
Date: Wed, 03 May 2023 00:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683072425
