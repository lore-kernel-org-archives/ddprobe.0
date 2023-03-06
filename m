Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33200525C
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 13:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCB87C433EF
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 13:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678109225;
	bh=+VFxxonDyof0hjdA2BZeHXPI5qqbxhIWYghrD9T6Ueg=;
	h=To:Subject:From:Date:From;
	b=PnvFDlrecGqI61J3bmi2Xt4QSzP4x8QvrRB0Xming3e1WnkHg5GFAzIEXCwp/WHGS
	 85NWe3x0bnN1S4Ld3T3ESzZvjVJGKIl6jPM+gW0ILMdKAYsBN5ZS371jADX3jNrC0k
	 mhaUbojxUD+Wnk+sxxR9ISPXXnM2C1X4br8ymIUNyss93ErOEv6ni3O7dMWM/Pzazy
	 zjNQXuUi1l89PnvSJ8qw/VVBv4UuhsaECba8anUuAPxhZQd1AGZN9B+4AQbgL49rzh
	 cGv5unO4MY/MgHW5vdHoHHSBPQGhVGRd67+o1qSJe8BRst+5ZVJ6AKmJsCRMan3bWp
	 iPvozHCsUy9KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE7A5C61DA4
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 13:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167810922577.10366.1031334989390893514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ee2258d2da9dcaeed69ab23d2e762816e77482daab6b6f90e20d5a4fdf11d6c
Date: Mon, 06 Mar 2023 13:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678109225
