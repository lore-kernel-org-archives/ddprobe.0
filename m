Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFC7336E
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 01:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 822A8C433D2
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 01:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671932487;
	bh=JhI1DWkOaVG/QdCiTwc6K0VLiquQHIX1SawJU44WT9M=;
	h=To:Subject:From:Date:From;
	b=mdCaVlSgVzIuC5EWqWkKAfVBXWLajsxR8lNPI9EBqsFxFhPZmbpuDk+nywMxTt3AN
	 gZhdHXT/XCdmsrBYrl58g2i/UhVRHR5UlYOihl2RpJccml+Z0nTFKbfJ4/NBNRmMD5
	 g68k8lzHvdEMfNUwb61LIWdS2Uhmp+n+/qAztKabbqBA9OKG4Fp8IA54ZQ2n23I8BU
	 R+2EX4G0XiGr81tFIV8t8MHgeNZcWaCVaixm+Nzv/zLE5AzaYt7rxKbW9385oP/0lz
	 nF27C2mCQA3MS15SvVMYIZTsCgV3J7NwsgPQdaXIU8Vj2tksS/x8w4Ajc5AvMY85lj
	 fgBtfCq7ez6Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67641C4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 01:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167193248741.2256.16282750491687603939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07a0f5cf21310ad0fdff5a2f8a4b87e0cbf31efbd67bbde0ca0320eea73ca994
Date: Sun, 25 Dec 2022 01:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671932487
