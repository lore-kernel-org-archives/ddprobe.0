Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBA437B
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 04:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A5A6C433D2
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 04:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672980087;
	bh=b7WVVr606T/6NQ2LVXBEy1TNxSiyJeFZ6oRy1oCR7BE=;
	h=To:Subject:From:Date:From;
	b=CB4maw8jcRyl1rcK6ei+K4SJ9iUZdBjUwZYnDlE3Vl30WAlq1lRnjatpOxav26JS0
	 NtMWJix6dptCL1HAq8CHhRTF9SB/eRIefkE062vLhi4Wc6LcJOXSv1kEErfnu+vUA/
	 UjRDg3jKSbnErVQ39otuDoRWRU/jhDitgtTInfZRVgUp3fBRCXmzCBoGHzeMh2ux4I
	 fKCzUiXw4XVaSAW4UBOaQ3x9cf30gUmeoHiloEid4RWF1JAeBAutPAn+5rM6X0bYZA
	 Smu5y3zeKbVR9AS2XhzmKVQ62qqDvUsfV1GlakP5ZdCqA8T0h2Yh5KM39Qh7kYphTj
	 zl9svisVk4uoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68184C3DA7A
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 04:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167298008740.7620.12675877450681796450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08a050337d8896d7230b0b23f0e76fff8beedd0ac1076eb987630d351588d16e
Date: Fri, 06 Jan 2023 04:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672980087
