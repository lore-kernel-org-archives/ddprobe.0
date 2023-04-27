Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4D1EC2
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 02:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8929C433D2
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 02:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682563145;
	bh=HXXg8aorXPmEfmsCvYn5CEBm6BsZbm22/yLIwhtCx2U=;
	h=To:Subject:From:Date:From;
	b=HVWUwkRhdCLV8uy1VhfVNw9Px1KqOiOsCN2QEFGNnFZbBI8ZtcjE8/lV3JP0RvWrt
	 PZ80/jfRuF3cXqUKx9qyhAdiJbyh9qnxi1EBIlWcuya2GVoVRcoCac2ADkmixcTYvE
	 WyDL+RJvg7mU5ZCskijBrEhFrr4KLJmhutekZEOS3oR0IDooof9ZsTWb1NDNQkfWJs
	 VUSaSEGO3zVItWncsMFsX1plr2JZB2vVZBadOgKG6/YVFY4UZWL17j4eOfVhlheD15
	 aaRmSHQgFi6Ruuk4ISJp4WJxIoVNgl8+Xwf88zUP0FMZ1vVrUVe6JOytkYixz/zAPc
	 XahkxJ+e8klMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C992BC77B60
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 02:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168256314581.4958.17041942406049967572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e9c7693cb6ca213a775e39d9a48b2be6c87faa8b14c57a78c05f8b310e8b0eb
Date: Thu, 27 Apr 2023 02:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682563145
