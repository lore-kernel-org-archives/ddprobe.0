Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E5862F
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 03:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1B79C433EF
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 03:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679801525;
	bh=5YfJKOBPcI2HpoG9ZsDXAkQgD67mStfqz1pzjWOnUcc=;
	h=To:Subject:From:Date:From;
	b=pfmi9fRBkpSxXmf4eH27bOzE9R8Rb5AGB654HUFIHe8j7sFIdBg1wZgTvxkj+JP5I
	 BecKLlqKSmg7iPKNb4D/UtsHNyL1476754RGNxIU1rfFiRA04XGZiiG2PC5/v4p8T5
	 FpD8OvxgmEUSzyFZiCVv/gNRg8SzK4zIEV+jizQ5anIpiFCEeEkcORH1YiGTaz/vuJ
	 S9IqY9eEKVPudIYKANbyYsbXSEnFl2B+pmnAmJpkDdAe36bQ5IwdkSKdFI9DH18o28
	 BOnYRyuV0y3DfVrjEpFDUBuEXUcgMA9iw72gBFLNrlbLhnE+xdPcpcQBADsSFjN1DH
	 TGvbHwBX9/cfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1A1BC6FD1C
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 03:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167980152578.8554.9552451791124079874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b0f0d3f4154e39e53278393d3943ad87611970027cb83fac0a4c298315ca6c0
Date: Sun, 26 Mar 2023 03:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679801525
