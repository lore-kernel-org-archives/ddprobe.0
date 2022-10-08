Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7928A20
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 08:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D80FC433D6
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 08:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665219053;
	bh=J00XXoxs4Jl9iMfM2fxL96hiHwohOCS/6hP9Cdbaw5o=;
	h=To:Subject:From:Date:From;
	b=Q2VpYdZEuamdIWpjSpRffxkIpnz/TTyiM08KojEEPMd4aI2clOKJUVb+WYmb9vqzT
	 evWfv6rvog5Z0FQek+TsMszGD2SM1b4zgAvzNXj0MJYUB3WKaoAex1OEkgqKEJgd5S
	 V+ppX2o4rDfCeBoI5rbIceUv6mr+7BhQ3YUFYa0zhZwPRZcEnX2LZX7hlo2MtymNoK
	 D+tdp7M9G3eks1E4ZsSCw4ys/V32I3EwbA1zZWJ30T5JAODkCDlkmqT4JiETjTBFA6
	 Clg0n8lLk4uTRPh00mn3zjukXtBgNiZc5VyLF8ro8ei5G4yqSJ5WDRgL66XfeKHMMD
	 WqX1rHES49htw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52FC8C433FE
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 08:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166521905333.17520.10336945399066266249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e90c4435a711af469241ebbc74b03172c8e513c768b21fdf29395e8ae2d97399
Date: Sat, 08 Oct 2022 08:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665219053
