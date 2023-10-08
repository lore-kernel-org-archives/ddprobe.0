Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FA168F47
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 10:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r5Zk4KJ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C805DC433C8
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 10:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696759628;
	bh=u/98ClEPuX11LI3RKsV0WX/1y7xa410xMIxsR00KPZE=;
	h=To:Subject:From:Date:From;
	b=r5Zk4KJ8CYmCGCBzhxFGAhnKqqOMCFD5RgTtS0p7iTe4Tr8Ftw0PYmtQOHSiWXB84
	 9M/8WD80zAYvKTXHGax3AbOEm/h7/UjPTbvHVCI2S0Gg0OeU4D793EzAeaGmfcdn9G
	 7yekiGJUjaEgPKNRJsqkX7E8WDRWz0U3eQf0M0Mj6yS3v1z77dKh2kyoTABWmmaGYw
	 eIQPGenXRgAwbY7XWyYgscDX7FhEcCnpCpPH74UhHGzFp6fKdJojQ7F2ebghlbxO2Y
	 vswBsLO7++YGiKC5K5q9cIUr59oD5TVmzpoMH8bjjBtd8v2NTqO4n9itsefLvkcOLG
	 4e817RS8Z6w6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA554E95A82
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 10:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169675962869.29497.2479567893905843056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68b4c1bcbdacfbc03f1415868d1261866f779b33313ffdce03dde8276976393a
Date: Sun, 08 Oct 2023 10:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696759628
