Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3145CEDE
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 03:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF9C3C433D2
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 03:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676171645;
	bh=wiuLcnjPjdPM3l9rNzW3bcLKkx/+VONohx/UoaRKIUU=;
	h=To:Subject:From:Date:From;
	b=fYHL9FD7JYe2M4kPnOt73SCnaKiKIbT+CA4Jrf9eL+1MDXpOHO8bO+9wdAAD8/hq7
	 BRLdyZ0uLSrllouLitD8eA3IxCWBec9SbsYrcgVjxS+htepA7miAsbThcWDLf6kWC3
	 TipoYDvNTA29JfUEV0Id2rvzrNcn2yUu1xi+WvfDEAkREXhUlk7Ze1iLFyS2XUrynk
	 rea7rkR0PeIpdj4H7NWyCfz59mX3OCw5Uv0iux9+ZCRWpYljvhSvCJZjIwvad/GpGy
	 I8ojfQ7df9JdH3DpLjIvHMYrnhArPpoqMEW0gkfrM6h5oTiW6S5WGxidKwqVbuwKwX
	 TYkRUnjvxEFnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3F4AC61DA4
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 03:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167617164572.27126.13921842010353456196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1da2f7e01c3b3dca60b64e88464d2242cf8b206ac65c268634a35f1ab05e19f1
Date: Sun, 12 Feb 2023 03:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676171645
