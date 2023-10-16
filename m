Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49768883B
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 06:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dmZSVgtP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCFBFC433C7
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 06:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697437628;
	bh=NKn/sfuCQ+J7xbe2HiGK7fpcbE5/YOGX/RMnngbeYQA=;
	h=To:Subject:From:Date:From;
	b=dmZSVgtP+q/H4HCZEnN2ZqFr6bVYFyWKxVqrVoruK1v/LjaG7OsIbnCt/GgrMdGr8
	 jI5cpgPUaS5SUXloXK5WioinbFkqE1LalbD9x7ks0YrJ2MS3hH+X6yOcncP3469j1+
	 fsIET6ALLEN9NTLtw6gKNdvtgU5ey2TGhuhIokC77vH5VtLob4bwGxxhRJlTIJenaI
	 XX33L6mYonvi2ZVguso9ZEoiQJY/1OGtQVU0kUWbKyhYmBvoATR9pkYlSUKN2+2nju
	 1nqOOpFlEDeXRdzOmICD4+aHcSCLLY2zLQ3lN3plUXJ5IuUHUcON7q48qKXb8ctOuv
	 XO7QampF+XERQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1C62CDB465
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 06:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169743762865.28808.3576751548265644881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71ac4f933a5881b4ecf4c503c94ed962aaff2326df212c00eae7742424e90606
Date: Mon, 16 Oct 2023 06:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697437628
