Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F3963D38D
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 19:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D81CDC433EF
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 19:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684437365;
	bh=hVwiBamEcHj1VLkwiDOItxA6teJYxJekRG12YGJcvyo=;
	h=To:Subject:From:Date:From;
	b=W/OoryyARjArk1vERn5MX3r1KXp25l2fziXoNLS8MIKzLHPHpBsTWYPoUNyKaGmJv
	 M6vmW3jBMRUmbkaI/6c+B/J0GZ8njXQgDDXJXS438+oDkOF+IAI9kBVdv40L22yhGn
	 kzTNuUa00LCT4FP3zbBV6j2QBJbh+waQZWUz7C/4v267SmWW3bJ5/fr7Pf7QJ9NetW
	 IrD4EofI8RepoycSfrzG5r0BjyN/eMuX7IlY9u2FlDmBwQz8kQSFYWV0WICHMvDXU5
	 mFw9+/KRHGUQmDFxZPBwaOIigetCdS/fWEuQOVSs/i0JETHpxJ3elhmcP2PMzDvVNt
	 Njmhv+EZLt5gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCB05C77B7D
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 19:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168443736576.11037.3317140830264154234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3142198228ab5275100c38825e904347f25fd439ca11bbc19d86bcc3072b29bd
Date: Thu, 18 May 2023 19:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684437365
