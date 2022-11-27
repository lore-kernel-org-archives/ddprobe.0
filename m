Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA12E17CF
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 13:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6935AC433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 13:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669554654;
	bh=7LejXWAnXaFHQXgsJ/3daoh4gxhkVcUU0xjHr7HQV0A=;
	h=To:Subject:From:Date:From;
	b=RToHpx5qkBTMBqQG8tfvMEn5RhfwUbZ68hsnGeoxX/VcgvFrnykYq5vZ4d9jtaGcP
	 meONwqQM/4gqNRHmPMtsh5Qjl5B7ySTluXyEJCcyKZ8fzE6Ubls53Hq3StemFdTsZw
	 py40ZkpIc4jhHxr2rqolKJ1gophY4F3C/KIu0YuEMLHbQs8fiBfx+S5lg/sZXFLiaF
	 oTkZYHl7DUDKQoKZBCAhAkWkOnp49L4Rn8w8ZkyLtSKWj+FBQO3OqoiTOG3l5pXtCP
	 ZtywrsBHJdfQpcOQYeT+ohmrP+A0XeT4aFhOe3bquiA1lAaqtVzBz82Fy6EG6RWPb6
	 dGYq48uv+cTJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F56DC4321E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 13:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166955465431.10099.3560730140131919953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d9cae95d79280c3e40a1aa07d879fc419f6ff7f6b56815bbd5979bd5158dd9d
Date: Sun, 27 Nov 2022 13:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669554654
