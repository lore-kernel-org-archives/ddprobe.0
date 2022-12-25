Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C87F01FA4
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 14:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A9F5C433F1
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 14:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671978087;
	bh=6Qa7eoctc5qSWNtvPYeLOfeJkBQWPCRL+7Obxw7280U=;
	h=To:Subject:From:Date:From;
	b=M2PD6QaMr1c+NNnveD1wjkz8lduI94ywXUlWByS8ROyCJlcTXswfSi3p6AWBC4/bn
	 72vCrrWnYVtGDUwdQOE4TeaLLkQ+b/F8x36GGJl63Kj1XncCppn+JCEq9MTlv5ybcV
	 zsiPT7H/TA8jwDzuRrlS9/SE5TJze85txmHWf8Bot4w2bRXLPCz3rYpEpNPpEuTLXk
	 VhgUMexHK0/C7+SktvLPSeQwIunGWeTBmaRfUZpKGpqGo4hSAk7a+2tacM5AaGdUiG
	 cuXsjtbNVmoG3HOA7vCmEWzfK0CE5YQycu1HNXijzSiL8ALaIi1aYlXmtqBPV4dTOI
	 R0/ubu1w3Efqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6134FC4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 14:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167197808739.32178.2632627151837776261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68619fc4cf1c73a86560d76c25a404cd269dbfdd462eb258d6ab48d22e7e8f26
Date: Sun, 25 Dec 2022 14:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671978087
