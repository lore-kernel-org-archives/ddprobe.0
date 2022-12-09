Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA4702CAB
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 12:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82C99C433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 12:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670589687;
	bh=0j1ZTNc+LU+KBJeFxSGE81pbDw9B+wLi4xlQ4rICuqc=;
	h=To:Subject:From:Date:From;
	b=AQvhh0gHq4JCDv/R52TdcJV7efRXOaMXcO6TsHlzBKj9rX2EBFwiblvRLkakg05Yk
	 8Y9gvoOr7OLyY4kPVTLA2gmbn2y9nH/PpAv8K5dtmsjuvC3jRNnn9+bviJzisrpVV7
	 OrHdF0TbwT2E7RnUVMzCL8PPh19F/UPWPuGOXyA/p5GcQw9NNoL36lO9NlQTOSbbhj
	 74/cXJsABsfX1cYmM5B0+NtJD3QTFkqdF87DFAXGwBBW8Ay9f1JOQuwOcQJBG22Y3W
	 qMieLcIa6IyMRxk5NlWrdlXNrFXlEKn/3+YQ5DOG0N46eaBVkRmBZXR0E5xDzdazac
	 oMvvP+GUhsz1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69F6EC4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 12:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167058968742.27493.7945853403068482660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5acaee0238779994a1d0ab881e931f4c2057263314e55dda1b54f677321f8d02
Date: Fri, 09 Dec 2022 12:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670589687
