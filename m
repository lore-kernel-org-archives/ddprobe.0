Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B19987C
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 03:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A53DC433D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 03:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663729253;
	bh=GQ/XODrzqBUY16Xvg2CjQLAa3BIyvXUxf2ai5Lb0VNE=;
	h=To:Subject:From:Date:From;
	b=RWxIWaAGgfDS3nqIgPAxE8lGVuPjYq1Hh0GMZod8dY5Sp0FgNcUhfXJroqmDoEHMW
	 E9o2byPcRkHfHlqI2uRl5OJ1o6qlzeuSMnjoY8Zc/GbLWmy/7Gj4lK0VD+T61sZ51q
	 CJuu22+6rbFfqonGd0uDKTwqOeRAScdI+LUFnTFmTXd+i78yjAaUrcCd4BCqAjgvm9
	 BKrdhAxyoNute2tSw4WlrGp7fUyxiHbFQHUqN0wArNuqmxMbI5OmApC71w9T9/+KmL
	 cDv+kXmflEnhKYTpSNJfE5T8Y5YMCBeDOpk3gGPoV8WHJXyhkQhXOQN+ZwfJUdsiNB
	 k64gW6A65iG1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F0F1C6FA82
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 03:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166372925331.13259.16931081386302566966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f27d959258ef438d99add1158e70768c31445300775360a5094f81c23be23860
Date: Wed, 21 Sep 2022 03:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663729253
