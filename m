Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CBBE65EC3
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 14:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RnZ+UUCA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80122C433C8
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 14:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701787096;
	bh=4q74EKLX7B/gVX3Y7BZN1EbzImaf6CNHtTTZiwC3gMc=;
	h=To:Subject:From:Date:From;
	b=RnZ+UUCA49Eq8Mtrm4O00/LDbUcG5tVpfKpwRsTizYOPTPAyTDQv804A2lDhlVJSU
	 Ysn5PAmUWtHluGuPFpXdafvTz1ZDmg8NQQuTOOpyz89ACVbRLiYOUMU0zkWYgPxHz9
	 3EMvZ7ojDf37bh7An9QsibYl9k8IG03zo1s8LyTrb4vHmJQ3vD2Vy8vNYwSbbp7Oob
	 gUUz1/NvFA656dtEFbGN9ttPHuLriRWPIYzq1/R1g6Juh5mL/NP8d8YzS4w7h9tP1T
	 jBbSNczuXZCBh3djHDOePwqwB4amj6Y3LfbxlJ9q3QFqJkUHzQKgNV/n9002y0ly0m
	 6PsKia+3FZtuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67A1CC4167B
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 14:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170178709641.16017.13254238145851626211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9e755693ef8a6a2d89740c3c92d2d7052bd11f76bfd73a39b5f0a381247c7c2
Date: Tue, 05 Dec 2023 14:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701787096
