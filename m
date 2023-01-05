Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C64A7621
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 00:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84EE7C433D2
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 00:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672878087;
	bh=fF3DDY3pP4GutwGjEXHLKLp8jbuP0QSef3v98JU17LM=;
	h=To:Subject:From:Date:From;
	b=aYdjKCJZ3zO7+eoKCeo3zzJTKo6MHInQVHQ9tPP8lEj6Q21ybomsVNedgsFxIO84x
	 381wr0RETZgA5w+9Nk+4C/rlMLavSZUxzwIPDO1G0OsqoURUl9l5jDQcDaSpZ3D+5T
	 Tg862lEfgYO7orT3olvU9x80H4KuhaSGIFLKrCgm78SMe5qBNu/TpaNB+9XJbNxQBD
	 y+clibGjjXTUqlvgY3E5px55vaSh2T4ZcRhd2CAT5ULDLv2F0dzpeV2Mep6XO0GotM
	 sh0qvSIhtEuWaarnPAhToBUSJ/Ug+o2ar/6SGIvNUdeRE8fe7dxEW0R8tUlaVrSx7g
	 srD8F+uiGVbzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67CA9C53210
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 00:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167287808741.14106.2875234051551883143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea729a2afcea3c1c06fe5a33b1a07e7abbae0e8924cb14f63a2ddb90be9fea34
Date: Thu, 05 Jan 2023 00:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672878087
