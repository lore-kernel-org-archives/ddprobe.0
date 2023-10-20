Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C57C4668E
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 09:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eRTaFgFE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 819A9C433C7
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 09:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697795896;
	bh=Dl3PNyl1oyDbIjwWvSOVOUcUGCuI5JbomhlQT0N09eU=;
	h=To:Subject:From:Date:From;
	b=eRTaFgFEb+ZwZ8Oh1ZlmSILE9QHWPm6jM5EiemFjPIdjmvsOWItVBGQ4tBXLBAEAl
	 JaTkjs0h4c0/ooP/Q3JrU6GAX53VnJ1wR9rhFXdbFws/SkpgVz5q4hugHYfWzFVu64
	 oeBekxIsZIakuLaofAwvBw0DGRcsOnBU9oxlavNikPAtfCxlyEX+HAQlu/+uAQjjm+
	 +lBXL3pmJKNZT/CcgcZsQfPk10gI1x3/7ITckmwy31t8v9mwwXJqW9VoPJ/IjwbAsT
	 xRZZ+LPmjBV763IcWgidiYNACk0iU97M4UyBWZnpaJezyhZrZJxgO8wpUXkG5k88Vc
	 Ur20ObrOfoL5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6630ECDB47E
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 09:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169779589641.22921.5943845038166375107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b1fdfe309d3f9f6ab647dd7d716ff763324aa0201994e1975c30f3e6c6ae54f
Date: Fri, 20 Oct 2023 09:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697795896
