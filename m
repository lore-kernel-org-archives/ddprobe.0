Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDD59626
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 07:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69416C433D6
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 07:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668064254;
	bh=/Zf7UiaYe94ZZn3dASErU9pSyQ38Qo2i8XYptJ/zVgg=;
	h=To:Subject:From:Date:From;
	b=e0aGzl0yVPmGwTfH73ga2FPRP+6QmZ8GchCPmsdSunWtWnZS+qwox2+eysEumj7Ux
	 nWKbUdZ2tJC+IQN14vi6Jig6ndMlwxmFCIThl9pTBS/VurYkofMfA7HFMPV1vbYQwq
	 vJWPhgRK7U7F6ltemHaGQEUGKF8y8oZD8wps7bYOhGChULR+jOABnFVGZQKv+NUh/u
	 kqA1BN+YVIauYREwdBOLVfMQrGW5Iou6O3gKotKuumDcCOU6A35KCUrDqO7a6tjpT5
	 JgDjkTXrVHJ6n6K/aN2KodX63QTDrGlJK1BqwDra9OTgF1xWAq+IBX/ZrTJBq+EOWV
	 YJYsYJ86Rxw/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 529A7C433FE
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 07:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166806425433.30780.13200711130629899062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba406c363d1d5eef6c6fad94cc69ee0fbbe87b18a6a181e2c1839562dd269c87
Date: Thu, 10 Nov 2022 07:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668064254
