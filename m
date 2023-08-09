Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EA4C81B
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 06:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C70EAC433C7
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 06:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691560988;
	bh=D5Qz4iVkjVapjLurPpykHGQBLfBLG1es+KSPYGQqioc=;
	h=To:Subject:From:Date:From;
	b=C9lf/MTx/+LuzVzvHRKxDCmfU8Z9HR8sXZ1E1p+abEefvYNKFkL662r43EcIKCHvJ
	 /QqpWjFMEdzXPOexvFgzZsdU5BuARPZuhvtog94OhsWObO56pz6D5oycOhDClmoK+A
	 zuGZMs23Q9csYCIHySLjEx7XnlxZtEMbWqvwb7sURj+rETDDvt/8RaC6krdaTGc8hz
	 sJKT6yWGAh9PzlHjReQUVSLkUyZyLTzU2AnI2UBH0kCspJALGF7fWm8tuIIfzHjAg2
	 XdhYt3XSR1sNR10/zjdnrv0v/xBcy2F/VTLD2b76pzjv/Cw05DWYwklO9MtaMxnu7k
	 M35+ykUL+NDSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE102C001B0
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 06:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169156098870.3245.16852516233710681390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce15c84533ca1a3ab1297e604f9b5417d47a262081fb21433b7f072a391e2952
Date: Wed, 09 Aug 2023 06:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691560988
