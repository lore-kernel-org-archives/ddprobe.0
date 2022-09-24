Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B972F7B
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 00:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 686E2C433C1
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 00:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663979453;
	bh=UQvaQy0u+ge66AI8k6b22OtAf7f7KRkGQV1AeuMn/aY=;
	h=To:Subject:From:Date:From;
	b=Ebzc5C6xD/Sey7XmZGqVOWDBx9LcTpFpjcNY+/gpTmXUU7Pk2XIPAqFTb7k0bTshv
	 OcmdpB8hOSgaZ43o5afcB8/+3bB4PGWxuSp8JLXxYh6o92VM9Jbr+2/NXT9p3GMRdv
	 Yqck5urBfxcit6MhCW5GfkVLIY81GNMVGmM3gA4GXp17yQNPXGQZ5eHwbnZ/RSV3At
	 Rjr0QsckAbGUp9XgfyHNkJ40m9gxGbuarSEFKa2XxHnophkhaHtXP4IauI9gxD/MqE
	 WD6N8UCSCDbzc0ShCR5htsz5Kof6HcB6f2kimL93BWUBL+Tru+A0be6u7Y6GT5vTyD
	 fWOL8fuQrTE9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52461C07E9D
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 00:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166397945332.5521.6128142061452564925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2864adfd5727069d42f23d4f0462dcb3107e4cb6de78c61e88a6077a04c342f6
Date: Sat, 24 Sep 2022 00:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663979453
