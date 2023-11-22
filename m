Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F013858AA8
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 19:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cDkD23o8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7486DC433C8
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 19:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700683096;
	bh=MH8yVl4G3mzDxKa0/MfNf/huffaFZZZzRz35EcB3YRg=;
	h=To:Subject:From:Date:From;
	b=cDkD23o8nB+CYHr1iGCRL4KuMvjlF7dgN2UUYzg0CB0FFiqiO9Cjc+RJDap+KCaEx
	 l3KaDwgq42gwRIqoURsInrx6C0wUWmYWUr+z4Br4/ZZ41Nf7uBxFaerm93kfIcQ96P
	 h7Vhr2wukdxQbpu6hzArOZ+Uy4VclVkJKNrc3VQ/BUu/Ev7COObODOoYBnC/YMGDvI
	 pDSp0LQ0i8SnNebk0YJzn/W2LV+YpFAuUcduFAWnVDebKJFexo8Xd0F0U6J0n3KTz+
	 ylrXBxxn6rqFSuU7IopuCnFTaQDtvO61fAaLYrcUxHrRbEgScSCSSrwWNxdXusAguR
	 5LCBgHbTYno5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D313C61D97
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 19:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170068309637.12880.847105286542807888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 345f4e63f504bbda94c9ef60933dd86c30b8c49d400b7cedfb3a1dfeeb5003d1
Date: Wed, 22 Nov 2023 19:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700683096
