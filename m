Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 648451E1C0
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 16:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C52C1C433C7
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 16:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691686388;
	bh=ky5ZM4MRWbHe5tTfsDF1rOTqUeTNsRRodRk9FWDR0Gs=;
	h=To:Subject:From:Date:From;
	b=nUGGzIgurKEV12U7twnJ127sYr2Hf60GYhFnY9Dcn66jdTu1BrCo2m7e4MPKsu4Rg
	 OL6QPQm3JpRIKuTxJ4fSW8kM+6NZMVeJ/y/5Nw1Pj+byKxVWcsprs9Cp298gEDeFjs
	 eiIfuPFF904WYeihtb/cuPAKMCdNuH4q2dewrSpNxt+KySoRaRpXzQS1t0iWUSQFIh
	 xz+Xlux7ApZnSjPWAo/oGMIFI94MV1EcS0Ig+e39lZIbIG/OxbkS0XR81S39+ICtbl
	 waw80CJdti3OsGLHvRhoT4bbZoIQ5y7c2jmt//3oYgd72Y+3FguleUEBUt+Go4b6aJ
	 Ky+AHGSGQThwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7641C001E0
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 16:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169168638867.11120.14194942161745611931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdf2aa5780b9a5a37eda44909f153b5632f8d1419247c915add7dda15ec3b66b
Date: Thu, 10 Aug 2023 16:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691686388
