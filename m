Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A79C130FBF
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qsj192DS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 803B0C433C8
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699372096;
	bh=kS+2DTbS/cfwom/jsXIcEH7+z2WUHivYBqjNmjJSfwQ=;
	h=To:Subject:From:Date:From;
	b=qsj192DS3iRh5MSztMjcafgImtSA7infbsvA/gFEgYSrT8GGqCuUM4gt0yZL4o/JL
	 mYfLGoR3V7SW/Foq5wb9BO5hzYH+MSp8Z2rYNL7H6vArE5vbigBQScFE7Sl2/86x5y
	 gcK69FoG3Xv7RhmnOUOFjsMWqtWeH1eW5Q9jDJiL9x/QjNfwCfl3Hls/ypGRaJ6b/Q
	 lByDQhtrI4vcu1jtQj6GARmnNywgsJf8MSkkwPVLwCDkVsvXsxiK2rGF7IpC/64iRG
	 iI1GUYUakeNTQzaadplpfhzzbbY9UQOWLC0p9F651N8kba0OupiIf0XtSAOtuvWQce
	 RgTKpMJWKOzFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64715C00141
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169937209640.3729.16412847401472200727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 038f1cd3bb9c77735338fb0a22ca6dccc3234b6010f4f5839c9c502e42a8c68a
Date: Tue, 07 Nov 2023 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699372096
