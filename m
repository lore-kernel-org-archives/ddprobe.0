Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DAB817C9
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 08:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 013FCC433C8
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 08:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688286249;
	bh=XRlzzdNthiqdB1OgW7u8V72TLgDMJcT2cPYJBZWSF5Y=;
	h=To:Subject:From:Date:From;
	b=sixwxXsuwqcgsv/rTrFkKvt00uIRDmFAfopPAD3S1yRretkzR/F1CPUAdpMDj4ZoD
	 6tO8hXMGYJslCYoj3hgFSIH0ERqFHyMDGCf49nqciancYr8YpoEK/MqUO0fNECsR+w
	 d23bdaIBSNiCwUwFDkY9QNb8FUnq98Iw1FtnBV8iSHoI9SaargyLeFy54hDdRt8cec
	 6ERZ+/CxTVbIUWcN+tB8K9hgvVFO1QXMPwpJBtBV7L4KpeOz8xj63V/gLzOG9G7McH
	 y8Z45ZxJ3JEHaCkjeHfFX2eTSNwy3Icwvgt1OI7UozqOQnh0YJPePu+kl8/eXimhpi
	 rxedtChbPASMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDFB9EB64D9
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 08:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168828624883.8609.3018217943818533632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e88884fce2a4d37a2bdf9efa7d86bcc34eb3c088a003617153db53833db7acd
Date: Sun, 02 Jul 2023 08:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688286248
