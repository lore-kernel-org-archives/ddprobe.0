Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D52C4EC2
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 04:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87C54C433EF
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 04:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673065887;
	bh=uK2/ZL6UCdCBxT1QPx6uxe5JC4BViwIPQqwFhz0GsYY=;
	h=To:Subject:From:Date:From;
	b=b1miDi9T3o5lXTZwakxaNZGEcpEkafKdCwHj8BAxQHF94AXzFMu1sQtNEfaXGkcUW
	 h0WknLUNEYVKNWR0+Gxhb6MpR/d/ICPAhZhFLAN5JeZQyfoZMuBZKe84SzNNpL8ej6
	 ifYQWBIDguNE/13q/2Y218sNu9KoS6nbfjb3E3mJqVdAM+Vxu4M6fNoiqiV30wXUMb
	 1GGNSj3K+tEAHEwSw/5G1lgY6ny26UGyXlFwkVitsqS6fkqvInyQVOavndp68EkIO9
	 yc8uSuYc3PByuGNCygFUUjh6YWvNSyDuk+m3X/MG9D0n//x8Df7d3SSP+f2TANOKo3
	 pjEXLfZj5YgVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 657B1C46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 04:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167306588738.3840.4207714686093039606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 239dcd5620b04f96f6d88fba8583cd096dea667fe0f2cb369c89dc20f0e0ac11
Date: Sat, 07 Jan 2023 04:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673065887
