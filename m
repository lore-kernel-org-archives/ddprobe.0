Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8A4F23A2
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 06:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71D24C433D6
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664605253;
	bh=8og8SbJtXx9svK3ZwJwj4gX0/8lNlkwC63htmc4gmPQ=;
	h=To:Subject:From:Date:From;
	b=GwQLlEQ/G30Ewc2ISzlNn1MTL5M5jNN1BZCZPC47ZKzgKK59ImF7c6Lg42KoVYY+G
	 XDJ6ZFz9DKMEVE95QYn+pOu9gXw70G+cxD+Gc1tBF44O3+Gl0qLri17R1Ne6ndvxL9
	 PsMfdITIhO2eNRcdWCRw8/GpGg3FUu+FEidynrsn0eFGKK4PISRhaAjBWpfMmtUrYY
	 q6mcruFZ28zMz0WVXaN2oibrjYmn7VT/2SkWCJCHuAs7EhbsmL3pcsYjX/g1TghGL3
	 1p/VG1diklMkeMoSSJ3yVizr/LxuKFPDlC+ATB9L+VXLpYbGgIBAzoImRpZZUhWH/l
	 WNbCpHSthOPPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56FD6C433FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 06:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166460525332.18995.13996870801392509507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee43e64a753ecb49fd5ca6d64589ef68616ee2104c4f5a84e3cb5e796f6d992f
Date: Sat, 01 Oct 2022 06:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664605253
