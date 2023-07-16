Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2A81FB7
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 15:21:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D38DAC433C8
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 15:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689520868;
	bh=dF/yVosUdlVXCiMLPjgRCQZzuaUsEJYqqBiCeNQi8Ms=;
	h=To:Subject:From:Date:From;
	b=XY302nV4lSwkXYKA/oAO/zKl+x14VlROusAXJrNk3w/SqBVj1zOp/YWgGM6HT02cL
	 b5wjBUfWceSoBdLqIpkg6yehLbYp4wr2RztE+fGZDuNPwYExQr9xmOtrdpUPg7//EE
	 aG1IlYRujCe3s7EkTjgkKUPycYwfYlx+8WhY9snAUpHwAkiXNzyEXO9CGwbKilJDli
	 Hg5DWW1Jud0Hfc27aD0T6SZ3ixlOY+Kf0UfLz2RWCBT6MQT2DP7upUvT4egpzhaJBC
	 LwZtvHN3BZ6wu9wKSzNeRN+VmUVUZK07MrZJESYkSCnfvy8mc0WpBmrveTXYi1TqFz
	 BLZXqfM+IJVKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C04EB64DA
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 15:21:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168952086873.27810.6269915401935042645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 275259732855b381e8a7aa5e375c30f0db749b4133049fef7d39ba90a51df676
Date: Sun, 16 Jul 2023 15:21:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689520868
