Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D62723A3
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 07:30:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8EBBC433EF
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 07:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678865405;
	bh=c51N9qK0/4mZP6v62WDQ+aKY0YIRp2jAqycpOa9e8rk=;
	h=To:Subject:From:Date:From;
	b=XNXq92EhhNoxcmSZfyifouczI2EvggVdzL2CA/5NzVNy4X9pNB8u2ac8fzOoidkJn
	 EhBt5s8XMt0zzlxVkq1PiC10wIk53LSZOYXxNYTY2RzqpFIWjE7jvN+HMpoePkUT5A
	 peqx7EYm1Sep5ykG0AZZC6XvzFSalpErJzNrIV6F0FII4jsinB3xSZPCw6EqVE5Spg
	 77zOoaI3oHqkRE6ti2SUfd4eOR98nH/pp7C39lgHJ3yqcq6BxaADEX38C97STdn5fR
	 iiPU1VcO2vGptIrkk/cdIThIWSVnADitZtsle1bQnMIQl9y49k7PKLH7aVfyIztb/G
	 1zeH+Fze9E8Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BED05C61DA4
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 07:30:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167886540577.23831.875066614960433609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50e11c8983b7569128b529cde2068fd7064e85bf3f879fb1337f93db255068d5
Date: Wed, 15 Mar 2023 07:30:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678865405
