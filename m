Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B500E4419
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 20:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EA30C433C1
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664914853;
	bh=TU2fa8twt4bD4WbHrQS3NSmg2EJ/VI1YgdOVL969n8Y=;
	h=To:Subject:From:Date:From;
	b=Np4KsKQbsqdr7GFhKjvzTL+CyFRhNg+Mcm5JGA9dtG5IAhgC/7SckEepQ7udQekiD
	 sQrWBfjf4d4RY8MJK0a/MYEmLEQO1s4RpbHV8yrqRNhdrFB/kSSDUBj0JfQ4FefVxs
	 /OMX1+Ujv8xtG3SD7NSVm8IBGbcr27NYEjS8J+xnH+2BwtZr92hG4hKKFgWOE884dT
	 IR3eddcBmUyrr+ooyzI8Wa+jKLikCfsyENPogb9ijYgvCaN80u9C5ssUsawYBn8nK7
	 NeCpmMJYGFV7oixg+uPV9o7DAcn2EYt/weNPEQPOZ+8xFiwnwGDM1qbiwVEH9DyOx7
	 +S1w5mxDoW9GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 539C7C433FE
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 20:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166491485333.5709.13714016445706358853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d671bb3c20902406522339aa1152d0d24c9c7511e382fd9ab6b81e0784e43686
Date: Tue, 04 Oct 2022 20:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664914853
