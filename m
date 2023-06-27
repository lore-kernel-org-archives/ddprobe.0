Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 469DC1953C
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 15:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C668EC433C8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 15:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687878788;
	bh=cDA+XsxVkS4KBTx1fnaqwqWqw955ELw9l+1XV48fq2g=;
	h=To:Subject:From:Date:From;
	b=cxvq2HwWjQ6VgFZyg3G6ditAnnQFibe3h4VOXoi+xSpUHScUnixpn+IJmNaEfXio9
	 U5Cz5iwW+Ciw13p+ml1m2YnZnyGOSSTpacQmVIyD19V2tNVC6mXsUbgmuDj32DzOU3
	 q4xwX0lId/z9Bu2nju2j4qbXYZOdflihcWCJeU3fj+JQU077Z3o5MeFNUIwld0I+WH
	 hN5YPgk+M5Us4zqiqK7MWA3sph8EBrsyYa92ohucAp8dMdN1oS5d0JV7y0td92MvXC
	 BXlCsVy0VsePzN9pp/9w0pdGwGcklMOoTKemmkwpLGirN3d/tY1Yvg0QD7+smbrWbB
	 1wAck0BcHJR3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD3DEB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 15:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168787878870.4434.10101466064402791379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d01e8dc0882a6d926fb623e3383003f13d07657a5307787600ac07ed96f2d755
Date: Tue, 27 Jun 2023 15:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687878788
