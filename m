Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD332FB2
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 19:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC7DEC433D2
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 19:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675020185;
	bh=uRenX6YWOMgHOaeBI8b6wHMQ3cPkmZisUF8pKmxakns=;
	h=To:Subject:From:Date:From;
	b=tLWOzAGG9HSGKVAJ3RuAlNWDrez4fAbn+E+ivhHmOIbjLD/uysfNRJhmyGXT0vHEJ
	 P0T0UXgIN/QriyEYJdwHRZg89Se+5RfM/Zq5P+NrwL/2HzTPD3HlBpRG1Dr7mwHmMz
	 2y4MuyuBNEakXsg7Vi7BO8W5lU+SAxuvXDffzU4Vv0FWbNhK+IGrAXDnBCu1uW7dsg
	 7lCqNwDpHJ9xCXCSTy57lnKzNoCfFTjuNGdYQAdWnZIoAmXcxvttcDHIqT8hDOKgfV
	 P3DfqPuytmHDtAfCeGglcERxXOm75fjXwDmO8VnpK4MqO/dOlIIT9WxwVmyy+ojZBd
	 3y+ATd01s4T0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBAA6C05027
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 19:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167502018573.28515.14353521787436297461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99ae2a8a3fbed1e8a481c02434049a79b8f66b6ed1f2290c19cb6a41737db615
Date: Sun, 29 Jan 2023 19:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675020185
