Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5494F3D7B
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 06:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF89EC433C8
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 06:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689055628;
	bh=efvAsRuurgsEKQFtpC/E3DTFn8RaH8SJ5UNCsbU0Et4=;
	h=To:Subject:From:Date:From;
	b=puqVfmcW8RsQiJ+DmGPLt2cn9tTERuhDnHoF4qQ7pVk+kg4OLgR5LyPBCtieMVNyX
	 ZpxorN0bo3maaqQyKzkMGksZXv2Cwk2ggrfP82X1GRkYT4B5braIWlFivuGT9bg7IZ
	 rPc9R5/QfMU5kvoznXM65HbBIT1kiux5Kp9WimoUWF7Ppsj4yYZArC58PxphMV3szU
	 n2yMQTwmJSxsRulVwELv0vguDxR+haf5WSFmOfrnOdWUgVvLl0u0XkZaLEs2AzpVfs
	 i0I8lOQVuX6uOkBLvELXAPAV/IkCbMps7GllAv1Y6pJOXdhHs1wdy/WIW0h7QwCPM/
	 1Ig7Cmioj7I1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A606CEB64DC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 06:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168905562866.14682.4350574503968661514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35e03c14d4f6be85012ed4270d210493ae391b4ce1f8e0094a19592f6af07c3b
Date: Tue, 11 Jul 2023 06:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689055628
