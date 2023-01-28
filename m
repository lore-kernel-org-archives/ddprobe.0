Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4870333FE
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 14:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5EEEC433D2
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 14:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674916385;
	bh=w/aHgIixhdXf0ewgemcVVDolFCif/ZFlJAQk4l/xZUE=;
	h=To:Subject:From:Date:From;
	b=YCexU5ctrWZsF/dxv2P8DVXEmgIEQh/RYm+Blf6cHlIQRlkeGVZLmTeXTw8B5uTub
	 /1KlPAWtldLtXJFCLYptFUQtn7J+T7ojkXMPKxazqAyx7JPfxmvs50qm6AvV7OBV+j
	 z3y1378mMNL6qjj4coHYkERxXHaQIq1jGZchAk0T/XC9ypsMacB1Ea16vVGbSZlU9f
	 EvB6khmJ0cDKBSFhl2Y6jlFhXoZStSQFRNobN5dR/1CVh+b2T396ovJNo8lNAS1cDv
	 8C2xkgKgLo3JNbKrbnRtqo1C2hH4DenZh7c88kd2EVt9qvLBBpHevcQ0myEeLwLP7F
	 BmsaBLgI+XfXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7F02C27C76
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 14:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167491638574.9252.6216991968361796795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef56dffa3d720980913d0563cca4697539e928ba62320e0c91bb6b44ca899211
Date: Sat, 28 Jan 2023 14:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674916385
