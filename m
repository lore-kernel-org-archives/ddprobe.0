Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFF311FAB
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 08:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DFB6C433C1
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665304853;
	bh=CDY9gg6dgw+guurr06QMLrnbvmFFz9Ob04NdOrMJ0j0=;
	h=To:Subject:From:Date:From;
	b=aZRGsBzOnb2X7K4L0QdLH8XL6vXFIOnJy6tjt7sjTgtyGfhggseCj9j7fT0UNLeG+
	 GOgYmTQMfMlkkmGQ/SMfmF870s4H1lCzF8d/0/JgD5lAQmaHkqnjTPXF9wVJul1huY
	 /Ga47NjF87qrN78TDsDuQ5f7UfcNWABaVJepZdlTbPoRl/f+S+2S7FDcXawJksSRib
	 Vdx0X2oEzztYJ6rLiUi6w7RT6mdV5u7AOYoaImBkNn4N6EcNo2Y5uwv77MKG+7o2EX
	 x0vwe2UjsgAVsSiVidQYORcgQW1HWmAV+aJC9fbRwDdGiXC54u3QMvrkQVcmLGDydD
	 PeAhA9Uhz42VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5451EC433FE
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 08:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166530485333.28973.15227087398766204367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a577b009f6916daa649f6f1dc614306886916200111fbad27f89e331ab65424
Date: Sun, 09 Oct 2022 08:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665304853
