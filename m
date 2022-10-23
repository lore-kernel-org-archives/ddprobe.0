Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B64127B
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 13:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73B06C433C1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666531253;
	bh=EEP2AhgXplujO51eGYPQSX2XR3Z7uROFCSjToo/i3Y4=;
	h=To:Subject:From:Date:From;
	b=UItlGL9otcF8T1e4d+9AwODv/JauVTEbhVzcwuecBJC9kUndBOGqywByzfs1DkD7K
	 kFmdLOci0sqRAnUAo5qxFxvL3M+ri5NppVEz0T5hVXSgzF+fqwZugSPNDzG8I2I6XY
	 spqYQd0d2DDUf4tjy98vttnqRzjalEmIiWI3GW9fm3SDg3bbhm1+ASBGgGYDBxrLyI
	 KXMTdl6FjVv5zf0TaDveie4I8Ogf0JmnwSIUyTfVbnK5xR8eJ9eQCWhKFXX14rgfwj
	 Fx2L0Yr+5Y/xJO/0NmlWjL5VM9L+KZYtDbhr0yntVpOr1TujhaVTfn8sOOsoqUXA3R
	 Zu09BZpYio+GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58BC6ECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 13:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166653125332.8639.12662810312469776825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d4044c1b883e24f8b3f6056c6967cd897ed05b11f9e672a755447483210d43b
Date: Sun, 23 Oct 2022 13:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666531253
