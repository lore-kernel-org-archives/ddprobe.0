Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5031A1427A
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 18:07:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD371C433C7
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 18:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689012428;
	bh=zYNVwn1wXYhYyPusHbevwACBmCZWRn5okpKb/0+kF7c=;
	h=To:Subject:From:Date:From;
	b=sY8KOEcs8OUmkyJ9lhxstvPKONr5mmSg/IQORWv4usok/NSa73BfyqKxycVg13Jl0
	 Ju1e2JobQTR7Q7uIvapaCTsWiCWjBCXFyogWt5gZiSNtnc6Ujn3eK/moOLEuXeleGR
	 pyieN+NaK6ieB2ikxYh977WffqhQemhWKVZ4abm2dRMxlgVBDCa+aXNpnXuLg1H47G
	 cuBYIv/Wao0cSroDY0MaUIe/dG+aicneTZSjnoxo0jra1gpGFkH36XLBMQeHVCAuc+
	 LKIA51x4/un/LLP6p6h2/RETjPaOPaiEhvp773JkbNnmflUVZPmu1Yss2oYpSEc++u
	 21VFpqVIFslGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE49EB64D9
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 18:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168901242870.22982.753567988157952701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33fcccf645f37edc136563c42fa0064f68497877f4e191b9116be746efc6a54b
Date: Mon, 10 Jul 2023 18:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689012428
