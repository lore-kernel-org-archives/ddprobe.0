Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1E16748E
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 23:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84B9FC433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 23:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672614687;
	bh=1uxvtnBBU0VLiJ2gxKyVYZMWA/3Qt45Q+kugegW1XDs=;
	h=To:Subject:From:Date:From;
	b=InK0pCVqEMZi0P6pff8cjwKKgt4wieWx4XwQ1Ql+NMC+jXSmMgwOqPLrZSIwyz/Aq
	 Ckj2j7QS1vo9I3D8SAstQdria8iDgNeSBsc5bYwz5Yjx+WZDWj833EFWwim8JLpan2
	 1HhW79MdUDwHKqTis1iVLk8EJAXTrS9RbGjv3Pdul6XcPOoQOQajeO17Dr+sQRj5gM
	 fm4yMo1VvU8yvVFMnOy6+C/AZuQiV8l4XOWzXzsGENwKlqIt+SBfGoTfPbGnIyrS6e
	 Clt9zWnv1rFwdewrToBF2vD97iDLhv51cYCv1GSl/QqUbYhkIQ/mlneKApDzpS5X6M
	 /2F/OfrzcSagQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67CB5C4167B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 23:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167261468740.7507.15210958062028030818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 335ac1f97f6c48b606e315380f9a6733ccd87d823f16d4f18f8593d86bcc9d94
Date: Sun, 01 Jan 2023 23:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672614687
