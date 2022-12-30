Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F34971FA8
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 07:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA70C433EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 07:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672386687;
	bh=rwO06RtLDRrzm70OD+ZncvkZ44bIaLf2J1MGUVKZ8+Q=;
	h=To:Subject:From:Date:From;
	b=raKQ0uykYEmr9Q9F8vBYkPoGlZHl/Uj9vSb0GF0av5MtqspwmSCtiUBN8qRRPPXz7
	 yQr7A3q30kH53xNa8NrewWoRpzagCLIoM6E4hxFB+AYGeTmJhUYEzj+HpvTQUE1gdS
	 Cd7OSdQc+1SFwS0+jwMvvhhQRm/tCfOLWICo06vscl2GgC+8U/m9NvM2/vV3Vy8yfd
	 rCJGdQB79cKpWx33iwQJCRFcyzn5W8SCSDtyS6z4U8EYFe4fcTjkBndi8O87SKpE9i
	 /VPuSDIpnhD+Z8b6rYDzVIf/dugUtyKwsUrIMN9400p6kDGRIy9zOFAUWI9YQaMRJE
	 UAVrmAKNCszNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7DEC0C4332F
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 07:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167238668750.17757.16079437212530439157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76efb1be234a123a23b06afd38c88af4d7609d11f84dcd1bffc33bfebf9ea0e1
Date: Fri, 30 Dec 2022 07:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672386687
