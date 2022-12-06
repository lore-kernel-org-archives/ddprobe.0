Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C32DF180
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 04:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 778EAC433B5
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 04:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670301054;
	bh=pW2SKMJpApheEjbY74M/0OFKy7QHsBcw3EfqBP+GIEI=;
	h=To:Subject:From:Date:From;
	b=Z+p1/4TniDYzq3EEDrLJ5eFsXq0yMzKqoL0qPDaqcQefJBZS++2cOQsVdt0Kp2OcU
	 tnA9QFDJPMLffA0rwzv5X7YW964AAmC4aRjVqSTbm/3Sdst7FPx/G9rrKGCTvJg25j
	 H1nCYanc+CVSdAmXacMl3PSIe78Hkr8geWOFk921LjtEldFRs5TDdSE8KU/cP5G/Kz
	 dlTxDBcZKllTNMbCnZPt/TrrKKSxI8SqYi9wz7opyY2/VyKy1FXcyct9sV5YAYNxjM
	 YQV/hKO7ZGdsX7dDyoyeOWi97szlACbnJ6HyBARZBuQd5eYkYQ+tpxJ9EmEI6mYrHd
	 Z1/jqEx8Ye73g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AFE4C352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 04:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167030105435.13247.5670199533195325735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 559738d5721a2b4e1707ea62a1e2d48cca1d2b8bf0ef4740b885ebfb4aa5e855
Date: Tue, 06 Dec 2022 04:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670301054
