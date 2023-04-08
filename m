Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56D1F29B0
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 21:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFD78C433EF
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 21:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680989466;
	bh=uERuU8F728MFqUC4jjKXL57aOCRTWz3b6EUKTOegsRA=;
	h=To:Subject:From:Date:From;
	b=OfTE3hfaOL5K97X0qRZ18xu61UgzsS3KYlL8Zf64Qf8ZRot813rTqV2qe8IdsaRzF
	 /Okjgb1ilMXMNqW8c15zi4DFzKlEI5n+w68bMs+CAwlXtMjP+xexDB2Kf39M71WiVF
	 kpjEvzyi8cC/f6bKxp1GejPHaN6NpTenuOrjRCNYy8OZkPUbus0jmpiuHNk0HYfA22
	 bRWmOuFjsrSsiOXnLw3CKLJqS1HsOYFxqF2ZehpXGXD+ONwZBLvxNSgPUuT/LYc6U2
	 sgR9lF6WeWAViewx6vVRq205yq3czHcaCiOqqWPohtmbY5953TqiRRLYCY2YDg+dIt
	 tM+MU+1qMFXIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7634C7619A
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 21:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168098946576.19855.13494402888019844832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b344eb24a9070ac263a720fa4a291c672de16c04c1c639d6d933eafb2d4950c5
Date: Sat, 08 Apr 2023 21:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680989465
