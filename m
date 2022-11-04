Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6C66EDF
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 06:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77A91C433D6
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 06:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667541654;
	bh=qB+we8Ae2cTLg7yFWVXicYMz252ekYtLewxkxKlxnN8=;
	h=To:Subject:From:Date:From;
	b=S2f0o+6a7+4lRN6JS+1oal09US82TzLcuSw6rPWFwa6vORSZWjc0OcZg1yPRElQPO
	 GGHiTzSTQBrWunPI4GOSPRVwzAPtmBAfdRsOB2VNMsXXtxlFuo0FGTrhcDqDyHcsd5
	 H7Yyol+nWMWAoRFwpXEQca0XFE0bKDfPImAmuXJh75aII6zvG+0YtUkOdx+heGDjwU
	 NoMr0Fgsv8SGBPl4EV84WMJl8VtlZVx2GaxNf1UFlTZT9+lAsCAIlVZ3u53BzH8Bdd
	 8JL8LvKMisS7pDdjIEgEKH9iqNtu2XWDxKt9rkGBYDHAcvjho2C476R8dR04a2LnjP
	 hHzSMjbJw3+uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 596FDC4332F
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 06:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166754165435.446.14078428072315266861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01a378b01070c09b32c20313c0d5eea362c54d2bd482aa0d1031421c95bd0818
Date: Fri, 04 Nov 2022 06:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667541654
