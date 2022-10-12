Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D20EF612F
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 23:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DA49C433D6
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665617453;
	bh=zc+SXTuatGIRt84FnE+krg83Wf5pWWZ1CBh/YErK1Ys=;
	h=To:Subject:From:Date:From;
	b=FE2sercO3iGOJIPt2BdRmOz8PLf9Z6TN6IWvh0FkIsKonWzXVMLI/MT2m+p7Zma9w
	 2NhNrwGgPs2UZMjpSHQ2hNpSRMPdqYtXt2Tq2PuGDCjs+1kfsJTWXDGrupVfs6Keo3
	 F0YGK7YCj3aTeIFfV4esTw/BfLnNir/Akt5tQPkegKm4nxgfy83Sozt9SfSvXA+yMW
	 ij6rR0fIL3HVTlbXWwHWS3GBj+YiNlQnUWE+v8tL/dKwvTP4SKPU13HL2c7oUzblHT
	 /hLNm3d8e5GXnH7i8Q6T1iTzh2sbBiyL6qVPyaExubVpuTAEQECd79jjjaSY0WaSy1
	 IwyfwspRHnnaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6224BC433FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 23:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166561745338.12483.14115920317631655613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dbd2d5efaf2fab2e5cf83cb605585bd4cbe5fe7747d012548b9bddc7ed23d53
Date: Wed, 12 Oct 2022 23:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665617453
