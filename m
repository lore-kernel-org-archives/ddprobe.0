Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D794E20E7
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 04:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E3A1C433D6
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664858453;
	bh=FvCuJJ/rJS6pIhWoEpKhM64E7RgFULdOQeqkpPO8YCg=;
	h=To:Subject:From:Date:From;
	b=hYdv3pk3UnsjbG9ZDkH1Vlri49PpLVzLIdv7PljhIq2e+dAlkOME7WEzXIP90yA+W
	 XB0pvfTYBphJKzzTekLXZFPHelqKxo8eb7sc/dCganQdM7nruk9gCceSaDH0aPcWON
	 IIH2UL3WMk5dAwrCYUGFnfpD7U+9eoZaitulT4Fer1fVz0EQ+NXeDNBWZC7frn1Sog
	 S75g6VcGK8o/Kya3UxgycCrAzHNnQiT7jRb4c4KQdc2WYjENXWvVVEZEWBbvBGuh7C
	 6cMdud2XuYojfEOdrXBl8EEkFjiGVBQszkZx2rJKs1/NX83tCar6ztl29+zWd3P5TC
	 w9lw5AJAhMRuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6283BC433FE
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 04:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166485845337.16398.10172021457172290228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2856b457b67a3465655fb745576c4eda2a7542b5f10127db234ab68273eac22b
Date: Tue, 04 Oct 2022 04:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664858453
