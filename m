Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEB197E
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 02:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85F89C433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 02:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672713687;
	bh=qsKS4WZkJcDzqXAP6BYAJEG5fHKPPQ8bGidp+uxE96Y=;
	h=To:Subject:From:Date:From;
	b=N6YaaVGSMsZ+hBAV5vpo3KWLIf7K4xBAv58w4x+3YiSGjEolkEMyf37P+jIwMjxjF
	 NQUV7QCwxEfU7jJNSTD2oaqB8BU5LUvId3ybkDzrqTfppiiryNS8UJVk2+8OptY5Ke
	 iJiF13POWXON37cceOw1AqjHP5RoYK01agTDqfNN26tKY39FQcAgDV53kflFmGFJMj
	 G51tHDqx3bdKJfqPdlBlHSxVRMeTbCBnkvwvJRVQBhV274eTVEbBg/59nBBppkvBVY
	 zQx31fMGI1gyrWyUp7rzUFzdK12mbPkVly7E1BXRrBCo6Py5iLoNpHbnBA2xCUUvyo
	 aN41e7eicuahw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68434C53210
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 02:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167271368741.9661.15480595707057110870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f763c576ea1e994aa3b4e5438b6fb182ac90740e3400d7246e48e0592b2fa42
Date: Tue, 03 Jan 2023 02:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672713687
