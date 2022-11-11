Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1C9336B
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 06:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E171C433C1
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 06:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668148854;
	bh=ZADgc4Ld5AUREcLNcErvfZ82lcRQ+rbWiWBQjVOgcp0=;
	h=To:Subject:From:Date:From;
	b=Hgwa1xy4b43qC2H5zYEW5G1zI2cGkbvoe9UrlB14kB70GjQmkVLL3eZSMeacZBEWb
	 HMVspjobbBEghE0IvlLsjoCOvYYjLHQatu+yfY5v5OUza+k3XzSBFoLDElSy91J5Xm
	 3fbgkafKx6ayz/vqIzRYRc1MlAelUcdLyJ02JaKhjovimmXWs6Ka51SQkzcBH9d5qx
	 0YWIXyBinHrSwqiMFr0sU5Kbk9SeeeZcOlXtFeljCSVN23ZUe/tYtvmIM53KB9QO1x
	 2i5SH8FW5ljeSdRbfW+8qUgHKEHmGANyg4VcR3Zl4eQ2OMvNfk0mt7MuWeop6FN/6A
	 /vq9SH2Y7RKaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54FB7C433FE
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 06:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166814885433.4867.7224591496582171114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8b981f019d609076d2d0d3de5aa4ca633bb6e3f7a2480886fb19747ef7f7667
Date: Fri, 11 Nov 2022 06:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668148854
