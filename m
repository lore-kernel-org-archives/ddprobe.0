Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201AF322A
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 23:03:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB301C433EF
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 23:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674601385;
	bh=GsZGOfmFXa1RSykSpJtxJ4+E4OhnaYKgtJOkYkaE5mo=;
	h=To:Subject:From:Date:From;
	b=pUplUtObvjt2J1BX7ITD1bPofrXWR4Up/UDaINjyvy/WV2Edpny7vcpjLyWBQZeHJ
	 RgUsTmk33S1P7sobcWxdcMBMf8lIMCA69+NNDGIFIAx3AhcxX3XVbbA4za+uWt+L5t
	 kqHTVa93E56iQpVd2mAvzU3PeHMp648/40Bdmhk4+ceWV0ZEBworkMSVp+cAFDRiOj
	 G57NKn9wqh38IBlNM5G+5l+hYsw5kVgvqQBFb/ULWiztfZJlh0+LyHNcujqhwM9raX
	 MAf2h0RHNB2y5MZPCrSJZZFVmvbcB2R/uJdy6xUNIil+q2urQGvHXlP+Edzr/cyU7I
	 KUoseDNy1sLSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1981C61D9D
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 23:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167460138571.30294.4816030165590014219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d60d3878531a4bd7cc151cbb3e4ea6aecb9c42012130fcb860a60790b6e8db97
Date: Tue, 24 Jan 2023 23:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674601385
