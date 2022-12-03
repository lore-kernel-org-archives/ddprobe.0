Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A765B7B
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 13:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 670FDC433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 13:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670074254;
	bh=lCPv2i/XuJcY+Y+BuJ2SlRK+JUa9S7EyM2n4LmhSOhA=;
	h=To:Subject:From:Date:From;
	b=b9XkGauuySWAhafAKXqS8egFP+Y+ueWs1euxgcxS5hiGVieBMGKPakSA80lFlqTuS
	 UbQUGwFGSqY9Pzshg1cXYT64nx9RdmcW2+yvDevteHMRuylTca9uH6Br256QlXDSQ0
	 ZezxPI6qcZf9KrD4uUhnXMXCNZMNlcyRjN1cNev/VKAxY5NMf+munnWmH3/BHgBb7C
	 PRKKY8suFDYq3w1U9eJ/VfD4rB+zoU0EChwDNukvBPJ0njKYR1QVwA3A0MU10DKIjg
	 RLUrSsDYDO7v4ER2IEG39WG5giLZpVIUA32K5W24miGyb9bV1+ccoaxUi2dasYNwkp
	 NvTAcxsuUyfRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F383C352A1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 13:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167007425431.25452.241412174764412453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb04f86bd1a1af392a31f7cc941977d48e792541bb1ab33c7a4d9557b7c48c84
Date: Sat, 03 Dec 2022 13:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670074254
