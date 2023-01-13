Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02C39640
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 12:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F3FEC433EF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 12:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673613087;
	bh=KdKbIOz0WgbInmcegbxZyOp185Ke1oxuKsOge2KnQUM=;
	h=To:Subject:From:Date:From;
	b=Zl9WoQ79JAy96a4b1kubppxWxah/VUHiu3LvMTI8qPJkb4Wo52O+MMvxLrVkzBIfA
	 ja4muEgbLv6aNI5qvyMBojqjfygi8wc7IGLrpbDxSUMtlr8DVBgUKeJyaLV7V3wHHE
	 S8vzsqKSDBy6E4h9l+UFDPjofNPSWN55OgNWlH9AZTcWyWCZ/BR/zK8I/r52oXh679
	 zGR+Eadbk+CWCzKX9EFfTpkuRvxEoohegxKRpjinoliP9kOxYpJ8aqlVWpSDH5I1PR
	 pX9b93fFzee/NJkfRW13n3vxuFq0FsDF3Wm6FaGz42jAZEw43Gy8ILF4mRNDaLvmLs
	 6sS3OH07qwSQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 717DBC54EBE
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 12:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167361308745.30217.16941346424548591962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffe315835e2a50b951393dc603c68ae72e7d704f3a70f7bfe784626b99adfcee
Date: Fri, 13 Jan 2023 12:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673613087
