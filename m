Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C36B66102
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 23:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70387C433C1
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 23:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665445853;
	bh=5chd46YGmAnIVLI0ub0XJUyCmt7OjN0z04bWpyGlVeU=;
	h=To:Subject:From:Date:From;
	b=Af2b6EEInGOfPWVDKCynfwURAs7IK5+3ICEsJDts040fFf/0bdL4zuaQJGiiTs9K/
	 FCDatQwkCNo/0L3GkNZM5RYV43OPz1pj3mrgCu/+0rYQhVoq5CbpPDoKsDyFY0TPfd
	 kvHcAQgB5UUZ8SUl0Fi7qFLfp/bkefyPYxBS4Youn09AM8swH4kKaHB8+Tu5JLC7kU
	 V3XRNhzQQRuRi8h6ctwIV1A4t82j8WaKFvEZoGs17RgOXqCcjrVKNlcxWYW74fFv3W
	 ZCijRoCNnAYsqlIJJItb1/S8qKiTCusMxNQfdCYQMstlBPsUafATj4NddkDY2o/OmZ
	 frO+Gjr8gbPAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57A32C433FE
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 23:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166544585334.30512.14253654095688845374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 782e31b3662692e3c6df978537caeeba4cf8da1c2db7661d7e5b4a2332e7afdb
Date: Mon, 10 Oct 2022 23:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665445853
