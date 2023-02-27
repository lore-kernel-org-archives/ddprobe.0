Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3293F79E0
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 17:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8F26C4339E
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 17:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677520565;
	bh=DFrXTW3nydURdicG2p7cfiCwQIQ5PBW/cu1HUAKRLeo=;
	h=To:Subject:From:Date:From;
	b=Rk0HlWROsmx8MZ2oArvQ6iHkSyosIalz86Kglql+GpTuPiBnkCY5XDcdzJxlU7TpD
	 yf8YsYnbqiOb2UJCutgwA0B9lYgJNHrm57m0K4NRvSFhYT0Y92PPLLhF916uJCH+c9
	 HPaVw0SIcY+zTf8m5x7e915z8MhP/+h39fuvYYuWuosxRg2P7F02nUF/ORFjp4ztlz
	 UAug4zPSzaDrjXkVUS6/lwibt9oVDWo+2JhjXM5NNXxacbXWMWycl8xZEHKVSzTnF+
	 Hz5DUQjEVaibR75SlaB9kz0Htw5EvC0U7Bw1AHq8PNXTZk+wzr6idd/m1IAJeLPMIU
	 TYnJJRYugAPtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0D89C64ED6
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 17:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167752056578.29931.8678013321062470492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9bbb99cb394e81a53ddf543439d16b94fac201121772463630df274d5641b50
Date: Mon, 27 Feb 2023 17:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677520565
