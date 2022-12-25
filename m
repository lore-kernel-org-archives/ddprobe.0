Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDAE620E2
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 16:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FC06C433EF
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 16:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671984687;
	bh=C7QjuU8qYKA5ziEFLDud+ponh2dX8vFRG8Adg0vGp1g=;
	h=To:Subject:From:Date:From;
	b=jOHxMSTQY/o7BJ9BmSjzubaeNKwSI2XPRRNsoDgJYU3tV4dGLNMpKXpRe+uN/rD1a
	 wkWe3/d0JnuI+DSPxjyIdJ2xOgKIjxc1ljN3Eg6vLSxPL4yYzF4kySZqPpztEd8qe0
	 98P7hfU0gvojhom8V/Fdf8teQy0XjlAe6F7KOWQqjyg/KX5SrFtdyTCugHCrKN984I
	 k6EIi+9bU/rYf0PS+m7nImKA8lmyhStpBgCmG4bChEp2x6+6j4lvwadQdX1r2q5log
	 xiDzF8b90Btftb16HXydNrGfFpWC7eEFbBcbmaPDdQkUGgaFY6ohIT6jrEtK1CnUdg
	 7mthLZ3MMrJtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 695CBC3DA7A
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 16:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167198468740.10538.15371510157302287248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0ad080a25a079ce1f6c4343b10b87435642a313817819e26d63e21251436be2
Date: Sun, 25 Dec 2022 16:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671984687
