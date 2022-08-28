Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B99C6190
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 09:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72A78C433D7
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 09:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661677852;
	bh=o4olDfsZlPJs8ac+V8OBR+78Mfo0c8OtC/MFJqMJnvw=;
	h=To:Subject:From:Date:From;
	b=aPCNRXWi4AR3fD1YkzQE7/Zi8FqKLb3AwFVBH0Eoo33OCiCIkyE062wE4ljhNPoWb
	 uLHqefIjazRlaLEfRueMKHhgmk8SBKZtKIWU8Me8kXlYM7qJlkQUtWyKW/Jbq0Vxbu
	 e6lBjRgd5TeSM2i0926kEEEeq2DQM/ttPw9OPIHQOM5FdYEhfWOCjuAtP6i8tm+P0r
	 ntaazEV8HubHJfL8FETXxKAUKxTlp+E3jHwGPfDOtwY/7St1/Ix3RK8zQUY+9yhhsW
	 o9eSumHQgYhBPPzXcMiaI0KwCrCsiZrUAmxFseuC0w9qKNb5K2G8pwOrxohbwnT3Xc
	 wThFlqKjtOY5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54339C0502C
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 09:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166167785231.21077.1522512566095731559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8c156478b8d0455c9218e86b2397ec487b0972c7ed0570a768c8739290caee8
Date: Sun, 28 Aug 2022 09:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661677852
