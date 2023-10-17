Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54322C2CD
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 08:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EEGTz7kL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEC81C433C8
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 08:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697531228;
	bh=7qxnDiEjdQsx5VdpFPMpHSG5CsizHm2UBIkOaoYmHBU=;
	h=To:Subject:From:Date:From;
	b=EEGTz7kLUOAvp4ZUiAIi+jL+AOnNWfBYhEoUU1v8hDfiE5/egVEdR4+a9tlfSHjei
	 Gp/4awA8f2UMiWuFyjZDg2gTEdfZns9aWpNBhaxt7x4QNP/QOj0/UQKnfPLqKehJc5
	 EK0dYKMI5842f0a8CG/5dKAnTt1VCOhe9uT6ZsCBwu7bUSGm9Hx5qLBorx2rhg2wOk
	 bMyKNqEj1KflAKjoCWb0pHe/ObMe/DqSLA+yiawHYuUPphnaSlDX0hqXp1E1ib6POE
	 1YQbBhDqErtwVRCToqYNod3XR2Z8YS/Ttwdi0alORE2daWvPXvYB2S8DzM4YwLjcq3
	 bMIH4I8GUeiXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1826CDB474
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 08:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169753122865.20534.9378283392037307614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cfa9b843e61e677659c7344c02a5b3a23ed2f8a158d36a03feb8b0b563cfd7e
Date: Tue, 17 Oct 2023 08:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697531228
