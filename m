Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C45494A3E
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 12:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6935CC433B5
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 12:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668427854;
	bh=xg6t6nrBqmtPAKWF2TA9xvkjp7PCb3mFTOUHV04frPY=;
	h=To:Subject:From:Date:From;
	b=MtMiZidnb34nY/vT2nLcFpdlrK6p40PFncJFM7Uqwc+QSEl2aXPU6kisUirkcTbbG
	 uGU707+6iKZvRuIiR0BNNoEcCL8TuYlmAmhuXdblvuK5ByL+nMGZeMM50B2uIGjCfL
	 6i6cwvh9mBGRojKCwRLKEzRRIp5C7nYee9T+ekxQU0RDaxcWL6mDoTbDYPCeMogXAj
	 r/EC9z5UDNcGPKtuWbtGZIDeOeJK8uBViwxS2/v1Ho0+NCKhzMkAD11w6v944TuSxl
	 av/5c3KsTRF5ULiO8giWWPuxA+LrGcNlAbVAAg6k98udr8IA1MamEucejoJy8oJN/A
	 enG6+pCLv3YZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50405C43219
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 12:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166842785432.4121.17379759443121834736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f417da41294086cb4c761ea3aedd114c94fbc77e8dcbfed040f3b61820bb8889
Date: Mon, 14 Nov 2022 12:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668427854
