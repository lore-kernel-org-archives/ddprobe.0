Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8AF2163
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 00:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83AA5C433D2
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 00:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674001287;
	bh=zRwDbOGgMtJuDvjw8oaCxDRsVl9Nhih+GNXNDn5zc7c=;
	h=To:Subject:From:Date:From;
	b=DuqG4sIDVzzf1HIItGhuCJ+kAhdLA5ToGpz8gXNSl0D0qzIt4/X6MyQMXHFfm1y8Z
	 cV3cI4WAwRCMB/+FWeANwXqszIzyjsiuUWjmkTYWged1N3BgopLuYqLZJy8aKOdZTr
	 8xi9ZILFkrlfA2hyf/BOxvUCpmHnVEF0PoMO6L4SPVK4JfBPJJSga2GcFQczvdnOdf
	 icvHP3sUzNmsBzJmNh4PnlaNV5oUK2fITDFf8qU6sFXjhi5z2L8hY+P7YYpUkQVQOE
	 FWx6LiwqfjZyR16imohmTJrJjzd+v0ObXr4irR6TzkHMxpuqGrSkld/8bui2YBZdZ/
	 jT8nZpG3XsX2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 649A6C00A5A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 00:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167400128739.32659.8927283921366947871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f05e848cf0ca8b44170ba64365a8cc6d4a76e5acf0cc89f85c321980695ac9e3
Date: Wed, 18 Jan 2023 00:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674001287
