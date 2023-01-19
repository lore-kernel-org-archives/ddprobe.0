Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153D03C3E
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 10:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C092AC433D2
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 10:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674125487;
	bh=5bKMcDWUMhZd+hbF33HTxApgpvIBrKd5byiXtt622L0=;
	h=To:Subject:From:Date:From;
	b=o3CL/v+IZA2MmMPhGY5D0yWIjK3marDb/5S+ctQ99pWSW168Ugin+JadmLKKCPiQq
	 g6gkkV3AYwh16Bb0qjts0uFt60UuhlFbQ73dHUs7gpmaiaTpH6QbdLcnVHD4H7X70O
	 uzGMEaRT2EBHluMxA/s2OPWW7JGbRilh0maE8SgGv+wineU7ewCEKx1dN/xhOp+hzb
	 gyb4EJcEcplc3DuOy8Lt67UbMsOCgMBRpZ4xd47ZrDiTK5tXrXyrLXRN+Wq9F+sEYX
	 CqJTiwycISnKypSsgc7HUg9p7eBZs9lAY5VhyhSTGmRHXrIqIQpFdv8LrxKYTXRCo3
	 Q/054bVbpSQYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E59CC004D4
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 10:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167412548762.24432.9417018039125526399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac9685bc9f584d3f888089e514d92f41a7cd0f736c94d8ca6110d57778c095fa
Date: Thu, 19 Jan 2023 10:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674125487
