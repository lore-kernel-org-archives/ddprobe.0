Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4353C33E9
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 16:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0629C433EF
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 16:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683046565;
	bh=bN2AbhElBElFQELlK5Eb7AzIMC50/Az3LqE+yVWIPhQ=;
	h=To:Subject:From:Date:From;
	b=ToSIxugoY6GGiGFtpmVWApcZ7KNASqZuzI+FS4oNG15EJP/xRWrwhldMlAyreqOFv
	 xslm8slLJBDxS8iLpIEHNnzliy5T552nf+OAiM9eydr1BomhdNJkEQ7VrcZ3nDd9YH
	 EcxVOaZLccuYAmokVe8V3Ct593yg0tbPIjM2zBB5n1DqiMFHVNOGVVh7/XLM8o4P4k
	 SaviDb0vollgiFNnhEnLyGSMo8mjMixneK9ZoEdGy9j912Z8YrscZJgy10S/HCPtSb
	 dB/XjmpKZNqQLgR/u8a/7BW9v5HhjkCmO5CNCpMdgk+1hmTGZlff6Jjak3bSYfcvb9
	 pKstw/PA3pmeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C14D3C77B7E
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 16:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168304656578.3797.10033910189356539454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b43326568ca4441f1f5a53cf6182ec1a8a5e5d95f695377f086194cdd5adf4e0
Date: Tue, 02 May 2023 16:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683046565
