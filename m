Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEA05BA54
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 10:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67F1EC433C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 10:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666864854;
	bh=qnHrfH/SyLiRLr4ENdVoHKtoAe1itilGuw8f49lLtCw=;
	h=To:Subject:From:Date:From;
	b=NqpYSAH+X9Oh0oMKgbig9uHxoP4tYNPmRt07kGNqUYlrDpCB9vG8HGDAN+pCAvSce
	 VZf8nE5hYNlE9IfFGK9pEUkPR5gfb9buGcbTywGbIiL1abOdXQK+iRH/YOYrUG7/PF
	 xy0PV/3uve7oOS3q43LmHCufKRNkBsQGFWfvXgEFa4Qwn33WIfAKYG8lAC5t5V3Gcl
	 r1UzW/ym/qj8mWm5/V2SVqx/EZ6xTgbtdg6x9pkiJKp5CiWJUApv4bJvkGrePyIaQ/
	 g6YKOu2xO9gZxUJNPmd1xK+YbFQrk6M7dpW/TXtsTUcNHrRb8P8Ud1FUc0JzdBfiRu
	 yRa9OxADJfmxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53569C67871
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 10:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166686485433.28769.520738667094782522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc8ce4ac7f17861ab084d4739c4c0a9adf9fb18af76f25708b44e93cfeec3b99
Date: Thu, 27 Oct 2022 10:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666864854
