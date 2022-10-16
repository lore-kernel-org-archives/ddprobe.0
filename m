Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5DB9645
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 14:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D4D0C433C1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665931253;
	bh=0qzuMFLz2R/cuJRAuyjhWSJZD59o5j7OfR41LCTzx9s=;
	h=To:Subject:From:Date:From;
	b=b/Auv1Pyb6bmBAgvMN0VHfmfMKfdaL+AY8vdvDrJ5QHFtHeDMxABFwE/lPNmRpT0I
	 14sUdA3mhrWcVQzz6DU0UuU9fz6FDSGD6AzFXhpxYZcgd2yH3G+qxpc3jTADBtiUIe
	 WdjLUFVElkzc9e4KlXVCRgvg8eyplIpxUrxOq9TuSloV9DQHpYoamhCs0tJi8cL1d1
	 8QEw4lTEJRSJfpwhW0BDCWs1/gL8WC9aigMplGPRIw/W82d0NVY08LaJMn1JPbCF3G
	 odv/N85QTyKAewsE5UZZOcLbUSk1qacwtkH4KOe12T780OGfL+DIUGScOBpVpRHOWc
	 Rhf0P6uGVqXNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51A4DC433FE
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 14:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166593125332.20963.14097696534841765838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab027fdc9e317bedd9bf468928fd6f308304b278235f1977551d2c4cf39ac509
Date: Sun, 16 Oct 2022 14:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665931253
