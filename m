Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0F902F2E
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 15:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F242C433D6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 15:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661528452;
	bh=1aQT6no+sn7quMnHf+3g85XK4zh3T/WHT5UV/ymhvb8=;
	h=To:Subject:From:Date:From;
	b=AprjeIQVHL07RQt0e15qMR862jjPFhpW20TGuijLv1zd8XLnjKvrDo0EXqXBqBo/G
	 WsTD9XoNfj9OE9X0wPrT0Ul2a06VwHDrBfgOGm4VKtHr5Ns5CkNM43O9ZeVhAylH5X
	 Tv95tYTe/HwSVS7A7Q0+vedux3ekJXFXmZ7eexkl4Bzko7IZke6tXcKeXK8vaM0vu1
	 3YRviootFq5AI6x/zBm4by8BtPL4wvJ8DozBuA75LgvyFzjQp5s51CHdGUTZMMMCW9
	 COdu2LKR7SQNZo+FfkVzTxwb5P/5EHPcpHgYWEyWlpnHC/Hw/GBZydZXaBfe0AsbsG
	 Cnc5T1Yty0MNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5169AECAAD4
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 15:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166152845231.15133.6309812791064968264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d54b345c2345cd94eecfe1b89040eba9f578ab5c63ef4c0beca62c7e85951fc
Date: Fri, 26 Aug 2022 15:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661528452
