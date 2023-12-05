Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 114376FCE1
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 21:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WFsngBCF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80AC6C433C8
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 21:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701813496;
	bh=zzjUK4pZA1CRL4mmg3Cz5MIz/1yZgBxOQjseG/Y97v4=;
	h=To:Subject:From:Date:From;
	b=WFsngBCFIKwAMiiwsDXm5r6lqus/jBWxWz1su6cmv4dHTjv/QpowpSar416HjBq7U
	 8RxgSg/wYFw0f86TeCRsLV8jdpQal17eELpskbiRR64VBwFeCqKelPS0nzQ33+j2TX
	 zIkCO36CbIhLoY0fYRupbS7gwl/Ikcxl8xkNhNoSLprSwClhsdY+ZWwZIEHHuGQQee
	 K+yQnhs5/6QOXQPq+1udDhm9c1qjmJm7zsFsR79fZ6hy/RejoS16/aBvHw7px8D9HO
	 SC9R40/BisowjR/sLpU6/PgR0cTuhMbvsvlrs1CA0ick/h+NEpCWkj5Bl21suPRnku
	 U5So+0YcYf8gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61FFEC4167B
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 21:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170181349639.5174.16059863035961709782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63bdb2a3d018d84ab8c2bbb1f63c9833907adfe2d5cac179235d94604a7e4adf
Date: Tue, 05 Dec 2023 21:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701813496
