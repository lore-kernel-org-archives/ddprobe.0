Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69CCD256A
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 17:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07605C433D2
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 17:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681062666;
	bh=vcnbiPc7Y34VbVEN1BJm5lCBRFqnX34Yn5k4Y9WPPkc=;
	h=To:Subject:From:Date:From;
	b=NawzguNU3SwUk6Lc1PLPsZmCmJw805wqG7bhd+AanzHDjLbREU3OoCEaxTAON8n62
	 lIo7Wdkv6nCO1784IRbRz17xDSkBYmK9kwANlQbFw2Qpvj+QpKo8myPr+9nRYbfIgj
	 OVV+2yfgV+oY9jKk90zSFLdg7u1f5AYB6dg9arT2nzjcZPCsAp+qLd+J1tUFv7GVBd
	 QzbiohmsNCaxOKsXyzXZOk0QVyDyN+ezXjqVgl/HZ1g4E2Q9UzAETsB54yXzyZMS0p
	 KiVavDYXXUJ3vacqQ6V8paTkjHzom3AJeIacViedtMkzESZHmaLVN60wTO1ire+/FX
	 lsQ3YymxTEUnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD988C77B61
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 17:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168106266581.19604.12999173040410397262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b7e2ad0fc65096b87197a6c38911320adc8908aa09b676f642f19d15677d218
Date: Sun, 09 Apr 2023 17:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681062665
