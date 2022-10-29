Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D508523C0
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 07:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 738E2C433D6
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 07:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667028654;
	bh=sGMZzMADibPD+R3aL9q71tVNT6xmbn1oDCX1uf9eZQE=;
	h=To:Subject:From:Date:From;
	b=NwP0nj657IGE6L0D+A1kVflhunA98ZKtRY6Jkrn9g8+JbTfB5WQu5Lt7OcKw/EipC
	 Co9dqYk+ZUeuRSvXJB82V9ho+KkvJ8ShmcQt51WYutkZ1X/rGKsAK07+YzrDfBkNwn
	 +nmsfKlGJBv5dLdG1PFa2BZA3E5haFKKSpPy4O7tdPdUhdQx7/I1kO6nzdQMwrX2GH
	 B9iAF7lwF3aHFJjGEIDRSCigb9LoIQ+cMd41qrZPhn9fH4sDr6Sq7eLqeJ0w10zvzw
	 k+CZA2Bitt0KdkYq1wdhr1BQLePYTwGFjfEjhUIWhEJ3mN9dgbd9bwbg8wFUCTF8xn
	 xfm2+AihmC36g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59B90C433FE
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 07:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166702865434.31100.6468079952009424652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c01a7b07f039c91d90cc0ff9a464d9f166b3bd433128721fce3769c0b7442b36
Date: Sat, 29 Oct 2022 07:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667028654
