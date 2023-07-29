Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CD237C
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 00:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E55F3C433C7
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 00:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690591928;
	bh=8JaT2svusoZkLxjclPCNHL+MLr7cCWj2l0NHfPC7Gzk=;
	h=To:Subject:From:Date:From;
	b=B3OONChaLTuacsHtjOEVBcBnVXXSwL84EWjx48NHjdP95ctY8ELNy3F6jDb8xN7CT
	 0wCIiXIJHa19lNZyGPPuNdqty105VC3AtCaAVZbvUhYRpI9/yp8JEuq+VIscLVfvfK
	 U06kBxoz8fHKkEoPoZoaa4GhkeR9Udb4ZTVeXjEcs3rDN0mR9uoP1s1FEMHlRifcaF
	 VbBAH9uxsf6tvHAW9ExNXnqGfIlFYrCec/Bao6AlMwYnRi2Vr6VFyn3DcI+s1HtznO
	 nB4lpZ2FoVeek6sd75gppBNBxBUW1mtdLdMrFlMtxwYcf6N7F5NDjEr1B3J5AD0Pg8
	 9CN4DRACVvXTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF7ECEB64DD
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 00:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169059192874.23097.12543868797329800813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e5f6c6d3eddde3fc5cbfdcc08f196ee3f71b7b61d52fba9e44e84dd5c8c3d2f
Date: Sat, 29 Jul 2023 00:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690591928
