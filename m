Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4E5179F3
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 21:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74A69C433D6
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 21:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668461454;
	bh=flT5Cn/b/B78SiPo6XrM6uH1IpDX7v6RGw4zu+95K/Y=;
	h=To:Subject:From:Date:From;
	b=BhdgbHEMIgH1pAfha6AAjQ+v1Nu77XgJLp1ALlwVRJbuzMRQDjSXdnBZzUXmi2oUT
	 Vn21f8Uz0burkRfdFVU6NXljI/IMlzv2I0XTXHCdwHMerDumFhOdKjJCFtStyciZp6
	 CGyMB3R+ElNfabDxrfFX5yQmniW269cZVnEPBvN1El/KeefuvdEpPbZ1pmt8GvZaOU
	 B7OdX0OtmGso2wx7LK/kOCnAYN37OwDHDITiiXosLo8UFVIQvzJy6YfGni32KDdC67
	 uzSw5VkLfrMImJ+oW48m6T4UOof70FFRr7PmgIL/ZGVWCuc3J0HYd1eupd80kOlEyp
	 /BLnywJ4eVVFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52766C433FE
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 21:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166846145433.25294.10427628443503438543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e59bf5d8463c91ecab8afc979b881c765c9d95cc691730188068998f522abe85
Date: Mon, 14 Nov 2022 21:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668461454
