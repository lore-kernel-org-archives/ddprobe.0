Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53670A47
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 05:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE51EC433C8
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 05:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688620028;
	bh=l/yiDDNYSYrCy/8pKGjbeTxTMJmyAMEraW0epeNTdPU=;
	h=To:Subject:From:Date:From;
	b=cl17EwOI8TKtBH5QaFKAZW+J2+y8lmx1ElnDAGFCGpaZ37NiMa0JORJRgBuxRJ6zs
	 2zkETlEZA7p8UwISigXYZ/S9oShQluRvsesKh6DAcbQzqIchH9zynOw4FuEHEKltyZ
	 gVZotP8P6yJIj5ok4BipnZAZG28pMwZl/587Wl2yTI85DtCn6aLUYZVk343V3xEeVG
	 Z3L74d9IpEZewVftZqmt6zmux1vMp/zHoc1SstSleGfzx+HHYITVOkbYRTl6a7AVXU
	 TbwMQM+MJPv5u1ghaMnjAWJyt0JtZDwEZWfRo8vOWNdyt4VpSggCaByOYC8QoKtdLQ
	 LHlEPtBFpYtDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF600C001B0
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 05:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168862002870.17933.334045963946683619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8eab507a9cbecfd388525ef1bb45fa54ef3972090ece18ebbbfc7c83e26095f7
Date: Thu, 06 Jul 2023 05:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688620028
