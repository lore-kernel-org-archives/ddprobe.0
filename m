Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9B44DC6B
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 20:22:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9240C433C7
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 20:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690921328;
	bh=gpuGkVMf3DmC4Dhb0UPDdJM+76Z4hK7aXX0pB1M0pFs=;
	h=To:Subject:From:Date:From;
	b=fFrIRRO9rzXYxZsR4n0vPwXaXLpz6inJsxIhLchuHGO3YbRrKb1iFlYhCalcZKsf5
	 /Pwc+O6UwjJBo08t3Gv0cPTErbkZaUUvz8KPndUbDB4WfA+zIPvoZXDNAqWOXrRMCJ
	 7gHaV6V+qYrHI2IGoD3J5VWQlIx0tJ/2mcKV7MjCLzYPeWbz/TvW+FxcjbDhCENIqL
	 H/7CzCRWYygL6brpDVD2VV1f25eNEiRjoJykXLpdouc50hBNDxwcC3ZORvuCZPbgGc
	 2z8PamEdCuK9QgKOFKE+uzbx/jT5+vm5g6t7it7EcUb8j9hStUXAmzFW/5uhsIEVia
	 m9nJDUJvQ685A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD224C04A6A
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 20:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169092132869.6909.6055503717041244390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afd45e389e20433bc47dd6038808b24b310b47c2ded1d8ead3ae03375a4098a7
Date: Tue, 01 Aug 2023 20:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690921328
