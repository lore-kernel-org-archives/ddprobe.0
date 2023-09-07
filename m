Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52229A51
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 06:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0423C433CC
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 06:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694069648;
	bh=E75UcOG+1Uw4uhuUTRObL2cCRZPOzS7PUhBiztOW/KA=;
	h=To:Subject:From:Date:From;
	b=EVklNJyns7VYQ16rMnxAyzTyNBvQ0Jf8fdxy9J/AMX8bB5GDrDgH3iX+BhsKJayNW
	 GTc+4UXELbF3B0rn7j3dzVTPgQ4QeP4pvkrle92NnbandDzuR8Q9kPT4P5jP7uaCsw
	 9se+1GMFq7CMH6xayhfnoWtNdo3n/BDFLEk4VXVZ0Um8JA83A3ta/r2n2BTHv6hLJa
	 +YutTWFI7xWO5dx/GW31Vr9Y08IjRLa+iSnvYi7+vxXpXk8ilHjaCYpIJsBGbakKau
	 BuuEVpNAlustJXeOg3+C+is4ilb3ixI6NPI4n85uDntqEUbAxuGmu1zkb5wTNTp70s
	 cUTPRetDuEJcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3448EE14D3
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 06:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169406964866.23208.716596338843569165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 849e5dae473723081dd4cc60b3094af4406a9edd658e2f38d995b92a5909a130
Date: Thu, 07 Sep 2023 06:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694069648
