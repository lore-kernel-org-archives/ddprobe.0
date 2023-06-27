Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 620AB19BBB
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 23:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C918FC433C8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 23:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687909388;
	bh=gBZxjp2Sz+vTw7MNIes+/xgltx5xJm9u5LxuGISNbiA=;
	h=To:Subject:From:Date:From;
	b=uKPNQnLSe2WRVWVX8TA3mZM8VNVUnsuQ4FE641TwViFZcu5mAbzX7uYuOlMbyuzOm
	 Wwq1qw1XQoPm6qIV/nN8Q4233E2IF2BmlMEcGj5dlz56ZSmK9eKbMLADxh5aMfJYSx
	 aSUE1KebWCRXlqbGhEdNn0QtRFXbSrVOSrJB/q3DYT4jxB746FbUCpT9TLWOEoompS
	 jDU6Raef1B+CpGE2LzbNV9OCk6iHqBqAZqS0s0wSDKE4UTFFVFsmoGDhY434rXwY0S
	 OtSdHbKV/+1bk12qraNqDwilRpGX0zDMSAQRjr5UmgEVkd18gIUZOv+c8KC6qG5Y0Q
	 cBD96iOSFboAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE949EB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 23:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168790938870.18698.2018244065316025431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0fca89b277926a010b45f7a6aa6f52d0169f911f17ecc049d6f78e8853771a6
Date: Tue, 27 Jun 2023 23:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687909388
