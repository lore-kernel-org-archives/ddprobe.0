Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45EEC2F37
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 19:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0A2BC433EF
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 19:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679512145;
	bh=sOEiUg3JOWSGxrIDxxmhWtS/VFw+tfPg6M/2KyM6zGA=;
	h=To:Subject:From:Date:From;
	b=hV7UEloXTC7VWd1+88s/32R6dLngIh86VdLHjL+jWlAn96kPYe3MLNPKOypofW8UZ
	 2Rc0+oSWbwPfRK2ok4z1EYha+AxPkzi83rr+9xZGeUjrD95aBUU2bXczXw+Rk6NmRE
	 iVJBh4PQu40ne1h1ac4RpFZM5G33Kuq7AndGmbDzYQDP6pgMtAQ74xGkIIO8wJv9fh
	 R+ye4pIdY4mkVGTFxbhpSPQAcnbSvk89TzFZFmsT2GTa0iwHH0PlCDdFlG7cipHCcf
	 MfAjZyXpZBtD3lWcsuD4SMEgNNxBniO+YB9hDyXCxyGMRBnQvRxL7YMT6PxZcBgPVT
	 Vt8Zby1GsULeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6A7FC6FD1C
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 19:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167951214578.1836.4670263047824774240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b34f82ed4deb2be1a5ce884925cb75a395e4e5db0eeac2b4880320f632dc0ae
Date: Wed, 22 Mar 2023 19:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679512145
