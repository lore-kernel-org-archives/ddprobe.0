Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C82407B
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 09:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72F7DC433C1
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 09:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668246054;
	bh=VLOhOfNJdg+Xrk8bluUDhbBiagLhbQ7NypX2KpRjO2c=;
	h=To:Subject:From:Date:From;
	b=kH5dnD8XzLnqgFisAdhYiz1NqoBCJJv2CPLuH+ZJa/XtCO/MaETxeTPiNauc9JCei
	 LpDqZ5D3O5H64pH5AUOIU6zcKbPmIEyuR4Vz7XRR2w4yawpbh19e7ja55oLSdNKjEd
	 M5WtdhfGSgJ8Uv5zDgaaK6UZqg+CTOelm8uV3ysg2to2IKb8Viu+4nVH890DFef9xJ
	 gyKNI/fwMl0EdM0yTKH2VlfeKA3uRwHcuVFzuZnk9zOvNdkEsMVLs1S56Wzlpsk6aJ
	 ebR37oA4jYM7CQoQ0w1tjUtGR34P6lK19CsDGUdm0HDXiOP4P18hBnDsT/sRKXu6/L
	 tG+Y7aeFzn8Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56B09C4332F
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 09:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166824605433.5575.7987383096403116430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6187c4f936b11434ad2cf9690a22780cc58967e391baa3609aaffdc19056906c
Date: Sat, 12 Nov 2022 09:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668246054
