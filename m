Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C31AD28FA
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 14:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D8C4C433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 14:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662648653;
	bh=QOl3YWLX8lUJQSwFuWTsq5LEIght0MMHBk9sh8mWiV4=;
	h=To:Subject:From:Date:From;
	b=S/tth+yU26hzLPcw/W9bZBjDSfe58Ea+9Uoc0Jl8kaKRIKZ9+klYO/lV0UpzSxmGI
	 JgKEAB6VbhsRxy+whMDoTuUj9u8h4PbQK08Ow97LxDqEjOD4A9CzhQ6X8qHhGnsDyF
	 8r3v5VpPyVJYDmNjlsz0GhrHL0uja160YGZxHZsKi/EdxlYOBAF/fty6BZIdROoL8Q
	 SpclenTuVTqDdJs4i7hXTZBolLeVTXoHBAP/04IQ/FmeVBVuWfFxJqUIW0F61mGyJy
	 ye7dXBK00BKqcEqDEBRkukitQOI35gnIiIDHUI6aJl+hMtKIwZbT1wqGOQlWqK7c42
	 3Gba+KoQn828g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5318EC54EE9
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 14:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166264865333.9456.3721554182961339628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 589e569ebc420abf4187de4e59ececce11012578d3d7e50d7ec76adbc4b53e26
Date: Thu, 08 Sep 2022 14:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662648653
