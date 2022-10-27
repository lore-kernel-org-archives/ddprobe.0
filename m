Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3DAC1C13
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 19:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DD05C433D6
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 19:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666897254;
	bh=fgO2iB5/kAzgYEhUAPv+Y7t9edFi+vhXM/mvCOT5q4E=;
	h=To:Subject:From:Date:From;
	b=NsKUhtYakNDCxtt4wCuWiTL+OZY5bhpKp6LnvfTL91VVGTt9oolnK2gxLbbjycVgy
	 1eDDX3dVFMJHDWrSZvCzE531N75tvcnjRU4RoppqnSipxRSUouBZgAuoL6EHcHrXnF
	 RLdy64Op6CUoaX7dsg3lRbBkg9X6buL8NZpIwdFWVWwWm/9I31FCasmqP4ykxxALyr
	 EDS1wixNUomAF8dhrX8hY3uqHh8OPi8vGwGSkpUW7SdMhW/EX9aAaP4srZ7cBvzXuD
	 +w0EcINZTXoV+aS0VHici6P5fy5zZ/a2otIg63ornOaytlmk6xxwlsJE85MCrqDqL4
	 RfjQgI+UCRuCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58448FA3740
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 19:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166689725435.32322.6475804369376578352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9a58064ee722ce708f560d1d894053bfcdcb1be2d6191b0c85d320f18381bf7
Date: Thu, 27 Oct 2022 19:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666897254
