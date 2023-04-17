Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD17C2C5
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 04:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9A3AC433EF
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 04:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681704485;
	bh=GUTBNOlMgsN0R8r30gZPOZypDN8CxmEOmnAfB8e2eo0=;
	h=To:Subject:From:Date:From;
	b=p27IjkY1Gra8MEj04ZMX3ubf85Cco3oI1v1O4SXFUobp9drsEW+a5kMLhiyxzZz4n
	 Xr4tjLzfdCraPMrseyWVwYlL7DKD31Ug50LhLraw/+OLobJ2oQktlfpF1+Qy8Hs0Ae
	 Ctx4Z8Zswp98BCAKITiFPipxRrFAyf7fajynCZz2OvVCoVC1TN0bwWwJRcx982aYoG
	 lQoATXRyS0YU0jLH97ZD/EGLeqUHENus7t4RNiZm5Q3x1o6hecGvgwxkHnqYhCE8vI
	 42Re2u9hYcG0Qn4wj37+/5N+4Qw1AUS+p2FozcAKujAKbYlMGulTdksO1bsFPGo8UM
	 5IqUySZXG9cKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEBB8C77B61
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 04:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168170448573.12298.14324706295753331972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa40e799b037af333f7517a6f5c525a309b130f8cde34bcd4b52687482a9848d
Date: Mon, 17 Apr 2023 04:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681704485
