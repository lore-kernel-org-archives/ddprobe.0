Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E70FE160
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 00:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9030BC433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 00:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672704687;
	bh=p97zvbrtk4LVInIh67rXiXpD35lQZcbkEQOIq7ZFygU=;
	h=To:Subject:From:Date:From;
	b=Qj/C9Urv5AOachsm5io3BUphQsxrMqmKHNt4z2pxoUFyjJMPj8FBSV157d4pK2+F6
	 ZAPYTKf2FlLHybu1q2/e/wGUPBfpZMr6N82xrpHZtr2FX1myp5XOunTo3ZWzSbYoZ0
	 zjJq5CjrsFEj6MuCutKsz0vYIp73O6Vg1t756dhhjCr+PFPMikpskw/xN79ze44W6e
	 YcoD4yEaPoi09wV4VPtuQJ2rURn5qmK2qgSiPe7Wo1pe/1H/SDY0WK4KJEcIkRswuc
	 kKiukTdcZTxl83O11sVTvvJlKEp+/ZRFx12sN+/NZRknt4sgUsmCt1d58ibWe17kzl
	 sEBMRRV8O9UEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 729F2C3DA7A
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 00:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167270468743.11765.3779826123539081568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 997cf0aaa8f976b78dd6b18c6d5b82e6f08d1a157b37af1fb4a2043588004eff
Date: Tue, 03 Jan 2023 00:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672704687
