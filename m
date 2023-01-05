Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D26A97C
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 03:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C482C433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 03:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672888887;
	bh=g6VTeuLwC6stozgeWEYCV60sK/1UTXFtoeK9Ykq1r6k=;
	h=To:Subject:From:Date:From;
	b=NK1IFEe06PRjqC0F4XsvfYGRMwNCAW8yb6GuS2V4WesY5LsCZkrb+2ZD5J0tEm2zx
	 VG/qbT1VHNNfnHYbFRh4W/Hl+pjHwiOms7fYUY6VsaE8aOagIWFIedW06Gv/+u3z9H
	 0aIw8E2NhpDoxixw0vqIe8ibuJ2Nx/cfprTAYngni/IuGMzKjU2/2gUGTonuK0266L
	 LdRoNxalBBV5LWw7prnrI4N4y2AozxeZ7rIdrOkZ8++PujKtELXCmOpMyqU9U+qxP/
	 hPh7UPu7CIanmOlZ9CU5OZcCIucRtgXOIxwicI5FiZw3WHhuNyA09jOeWARoUmWJ6a
	 hVRkrNvPsvOIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 609AFC54EBC
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 03:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167288888738.5030.11824541401179944843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f388f6a13f4ecb7df735ed6332d67e388efdba2dca6f4b5fdd122320b274365f
Date: Thu, 05 Jan 2023 03:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672888887
