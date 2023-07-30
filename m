Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B9C3376
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 01:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5A15C433C8
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 01:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690678928;
	bh=izAOWwh6yZ3m3RJAQgkTS29ySSQ6YtlQoKTfoYiPXxQ=;
	h=To:Subject:From:Date:From;
	b=NC/HPfB2Q/TfKNf0bH8O5wg1RmA8U/45hMhSmANaJpeo1K2mS1sOwo13wqS5FQdMZ
	 klS7hUO6BLWajVLrntN9mjEdWWCHzsSHpvS5k0rwlClzhJ5d60d4DS14u9TJ7EczKW
	 FWMSwL05PIESHT/MbxludiLnf65rRKuLY3NbD+p7chyeqMGQ0XVpYtbJOuKGQccp+n
	 k9l2O0bxqr28L4YNYHHEcHow/ck6j3aOZcLcxjYO6X44yp+6cPvEyopDNQZFJ/65zl
	 JKjFTuiGid3x4lrMoWU+iu8a0zyuVBd4lL8ybCDD90BrayfV2Wvx3nccFwdnDqicTI
	 fm3kPHlyr1acg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A689EC0015E
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 01:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169067892867.2526.4025030888952932017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1a358d40419cebad3b5b2e35ab3f0dfe0409d2576cec30b534d80ddc31e27b7
Date: Sun, 30 Jul 2023 01:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690678928
