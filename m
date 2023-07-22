Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6887462A
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 11:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D10D0C433C7
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 11:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690026128;
	bh=XOdSra6eh3bf6VNmu9of5KWx4YeEyidPMlxZF7Hmx9k=;
	h=To:Subject:From:Date:From;
	b=Oih5TRLyH2G02qXpdnDZAjgGOkhDD1gYTF/qGApKLm6+X4jIG2AYjUPW1QBWKUXvU
	 a5x4A41UXh3D+PoSKkR27NDWuAa4paCRrJh5ZXcI4LfJfa7hXf4BP84BhH75nScITj
	 96Agum4chLhZS4XzS0qqzWqatONDC+DAbJCRk3baofXgnVit+xyU60hpYKjlx4wz3u
	 GVO/Pm5UNJKgedzWcq1AL18nDtpIP+k3Ejy3ADh2jraYfDr0LRZ1Z/HEHt2aeLahWS
	 aJwNj8EaXVBNZ8Ut21XtkOMEXHMXPuzMlWmwu2iYxfmTOF2gDpKw00ocHa6wI4lzac
	 j6znj0XzW8cCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2A00EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 11:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169002612869.2623.17636259513768697754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef79bfe30171213eadf23ad2d1255a08c13f89e3ffcc325216c6ad1c48bddc7f
Date: Sat, 22 Jul 2023 11:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690026128
