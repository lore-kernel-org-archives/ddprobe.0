Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B64A44C74
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 19:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 714F4C433D6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 19:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661541652;
	bh=KkUgfAA1y14KWnsXECr2ECMDnkmyBTBehecQ+HWjFMU=;
	h=To:Subject:From:Date:From;
	b=qAOC/P1GhXn7oi6yucjrKsqaJhlxf3EoSVNqjSlbkpkPC3IBc1e9VEXIey9QCVZR8
	 INl1jjUiuRIw34KUUGqxAf1wgqj6VDtXvfHtNBwZpSplsYlhBJW1OdGNJSppc11PU5
	 6Vg53ZOYY+LFge5puYme3G4VqHOpYBpTl0c6VuB94MR0XF5OO5gFQ025FjOVjuu77C
	 EJp4/3QSaLJiQAN+RnuVDI+6WuXJGHoUCh96WHA/NM6cgpsde1CbekvPQvPSD2Zigg
	 l0wR9ap9WPQ9AYJ+IR/SjiQvz4zv1KraY5d46LqABsomf6rOltHRTzXsG345276y/M
	 T5wJn9RLX1fMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A338ECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 19:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166154165236.10975.8913724226571648914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9f0e219593812c8571d6e0d5a138b5c5c998317f02758513ced3b6c97e6a82a
Date: Fri, 26 Aug 2022 19:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661541652
