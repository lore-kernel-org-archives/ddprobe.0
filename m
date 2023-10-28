Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0FB1097C
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 23:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ec0dbVtk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C280C433C8
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 23:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698536296;
	bh=v7ML9gm0vxJvmAlh2oYayXUvrNKUPJ5gA/m8fZ5PT/w=;
	h=To:Subject:From:Date:From;
	b=ec0dbVtkagbthsoYIyr5jrE6X7q1jguHQ4aYJfyPIkfWhtV7K21aHBRZJucnzN2t2
	 kXzYOQbaV96VGfm1+VwzpiG10JTeME8c3l4AsVbf5DWgNRHYK5nrueKfBkDjju4/BQ
	 2ChhK4GFXVkJZ0LfH3RPN+g0ukhD2+NVqiSp5iaWlKhQks9sOAwmkd1uaV5yKcjaU/
	 yvfHrpXrCvfLA+FHcZv3F9oBX07psAd+B7MpxI/WC/GQ6kMtRAs243jgXLF1ONpESW
	 PoPkV2+g+I3prZM6uCteOgUWboP5Lk2gEaUpgA4nSx5cOsu+QIJiPxpVNFlN1vfprN
	 xMXy4GdKAnIMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7013EC4332F
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 23:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169853629643.19301.16580527542006283442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67457ea3d2e1272b7d68ff42801a4ccb118a0815683f083c4e35bbd665d04e9b
Date: Sat, 28 Oct 2023 23:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698536296
