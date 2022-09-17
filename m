Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAB92320C
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 18:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C72EC433D6
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663438253;
	bh=SfODcJCs4zL4vWP9TVDjFFUFpgEuH2xNfsX/piRnwaU=;
	h=To:Subject:From:Date:From;
	b=vE4lOeobOktqPO/mdyB/naNCimomsZGW1Kv3QwaeKbetDpsHPMOR7E5Dmua1c63Vw
	 KpMvSC09IuWUWDWzKm1rFTaDscRFjCfMtMTzTY+MyiJXM2gv3rfdkG0puVq4kJBWmb
	 j5NnCoeHjZAzXbnuEBBwn8yoSWvROomtmw7oFos5luQuqQRWXyizFv+7r1nfm/PSqO
	 GDtxVOcNRUS0143fCJq8tv5lgoIa7CN0O5Rd3ZE6G3h8okbnxGhSuxYdYtSFMDeNu9
	 mNipWuFNA+4fRojWex6vcrkf9uStNQaU4yADnuIWHOYa7F5nSXQ2PRxU8pAXFbI6Qm
	 O25lLEB56TpxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DC01ECAAA1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 18:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166343825332.28035.246747842605152701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42ef0be77d9c49cf2d8a8c42881b78f90dd9d8988d5fd1675b0afacf157bbfb6
Date: Sat, 17 Sep 2022 18:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663438253
