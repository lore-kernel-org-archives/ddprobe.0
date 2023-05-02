Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41CAF81B
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 10:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE009C433EF
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 10:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683024965;
	bh=LDFPpBucRbrkrOvaxM3ijXHfkfqCL7oZJWerj5w5YC0=;
	h=To:Subject:From:Date:From;
	b=LMwvO8WV0uGhwkp+FSAC7XOzCEisG7uPDB9KpTuOWoen4b8hw1DiKrR8OD13BRILh
	 Up9cd3uWBXBS3dE9ChMLnF4WP3OHFKOhNYdotuEdxze17i3V4i88hJ+TlZ9sOHhoV1
	 rC7q/tjipXmLr3dm+RpWk4HVZ4HKuqR+Q1lV7Fc3VpJ5IPWylUqLoBIxlexLWEoUqR
	 RXWKwB35K/sxc8od4XBXUuO2o6h0Z3d9pU12/zbaNyabVan6SSo87kzQz+v97E8YHw
	 /Am6Dl+slGGKEWeE/Spl+8aY6z2p8i9a9o4qbzuy9SKEWkN7MRN53EGy4Ou2c+8riL
	 VRFDy0CGbZA9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC8BFC77B73
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 10:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168302496576.18959.5082642325875670647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fbc31e4c78b55ea2e7ace6669d3fc81b2acae3f1368a04ca8ad3e3a50f4cd19
Date: Tue, 02 May 2023 10:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683024965
