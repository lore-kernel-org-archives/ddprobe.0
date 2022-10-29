Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC87D7B
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 01:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 757DFC433D6
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 01:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667005254;
	bh=dje4EhpiDM/yIs2GOCqogtGslolZZTJ1/bS4SPzGkxs=;
	h=To:Subject:From:Date:From;
	b=XDl2/2AX5bQbvzesgD1XNsGZZtn5OMCLzsQnJ5V55mRWtsarRtPXRNdk1flxyaE/s
	 sEcQi4tiYqUDFI6KGZegh1Xw/Ni7E337Akw47mD/2WaYwAXHE1rkK6UpYMcYup2O0I
	 A0BasQSYbSiXyzDv+Z32m+19lMbHgRmwjQWN5KEaegFmph/mC87VA54WD8ANp0s7Tl
	 Dfd4CvqtqBDKE+KNEF4yvHzIz1wungVeEQE6khtGvZNf2v203AhcKpNIJB0yiCFkbk
	 BrrUbnlOEWuT+Do8wMupNXmjxTePZg7dlp4tFaOo/WtI+PWCRHnJpEjdIeZPwXZr6Y
	 M+bgSalWzBeMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A657FA3741
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 01:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166700525434.15371.2547825197760058025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77e811abb1f879c444200598bb73b7423a5bea50304c196a911edbe5c5ecdaad
Date: Sat, 29 Oct 2022 01:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667005254
