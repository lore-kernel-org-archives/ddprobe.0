Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BAE0749D
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 20:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2C1AC433D2
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 20:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675889465;
	bh=KLcHrqV1OX8yQHYbjljij/rVRD2JOS5WzSabhCLBmic=;
	h=To:Subject:From:Date:From;
	b=tVtP5STxti1BdbG+7ld0RI/iDWZ3Zod0n4A3nCBG2PBPvtTwNVkvW0bfqVPicx2Cv
	 GZBZz3JMxs5T2tuCVKySjyilnM6rVCrUIoSothOvllBMDi1qPzwYciBpeseeti0DJG
	 2j55VG/95u0MSZGuZUdwqU8ZHSw+6ICpv2le0+omGxuTk/pbeMF2jBag40of+tWuAZ
	 HL1o7y8p+LN19z9tKH5G98hMkOuR5hTMB9QKp068U91imzx2u5SH0AbJnpk6lGc0pE
	 +BP445vzdTa7hJ1IL1S2v4VO8FzuHdFHHntKfkOfin2N+U8NyVPHCHgB4WsEAXwJ8J
	 YK1ClHnOTi3iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C50EFC05027
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 20:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167588946579.20345.15078377275179545769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fea9b47721bf265806368ddf22d5977d17351b3d55ec445c37bb9529b9fcef04
Date: Wed, 08 Feb 2023 20:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675889465
