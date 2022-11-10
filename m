Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB2FE362
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 03:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74CA2C433C1
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 03:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668051054;
	bh=/BzkMmyMvVETrBM/I8ZaXKNyfFlcxIuI/HAbfJCYUUU=;
	h=To:Subject:From:Date:From;
	b=NSur/MtIm1yktAPEu5LXDV1ateIRw5fxCM48v+uFdbqEt2dv1HbbqcpUk0Rsby7GB
	 wkA7mICDhS3Ek9p2ocTPIkuYTrAilqMzHyxeUX8PxOba1SNCgsuEW4VjjeVf6dslaW
	 JkJ7RoLkxFCy9V6kQjWiM9BIoNcP5NGupDn6yydh8zc6O0A6jur9zjV0T1uot45p4a
	 XJBBsrygCmgV9ddUFD608CuZ17ULd1k/dPFlyQm+vg7A9hQW50Th+6Qc/NpWTc0La7
	 8OlTtvVF2dz2xOoBDJbN8/nr3XoCPAIz7XTuhfa3X0Hcna/2pEpbS34okTZA8BcwZa
	 FXEl2QyuFsKHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FC32C4332F
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 03:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166805105435.18058.3028008875867913303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e397fa7bf7fbc179b74f22206f12d6ccc9b01ee69fbc549d7bb579641db32b9
Date: Thu, 10 Nov 2022 03:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668051054
