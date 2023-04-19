Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54DA13D67
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 13:24:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1F18C433D2
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 13:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681910646;
	bh=GR7d8vxDIgjK/oaMjIyNjq8R1I2jY18FYMa/50dH70o=;
	h=To:Subject:From:Date:From;
	b=MGwAjWqeK6M2gtPsRUC2UT3VpDThjxWev4a2884m7InRh3eDUmD2fziXvZBvd/0UT
	 cxtyBvqFWuUM9qD6XXRktXgttwR9i1ejLzGv+AEFoLNfYI/OZaMLcliS1YIuBGKo8i
	 udgPgN0IJW8jrexaKvlWTSpAXCWQn5bwVrn4skBxjj2CR/z4ePH5ffqqJIiTVVjCuX
	 Oas1AHgdkm1JzJiAOUItQwOLTAnQDB4pq1s01ElT3WU6mL9I+ywNGQpczlk6TmCw/c
	 3IK2+gbzGfl0oyu9r3lRfRtxf9suPYcLAO14vIlE/HnQAZTa2kgPSAyJwtAcRm6ZU1
	 VqiwGJUJVHcrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8997C77B73
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 13:24:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168191064580.21256.12375368206893412882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ab552e3187dcedb784cf2cd92ff40d4c25422a42a170d7a2ec145214e6b6ee6
Date: Wed, 19 Apr 2023 13:24:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681910645
