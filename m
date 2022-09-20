Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B13827C
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 09:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C6CEC433C1
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663665653;
	bh=ipfD91wRuUIQyZ8+1WYWl/W1SleBy8KYgIF7pHzybNM=;
	h=To:Subject:From:Date:From;
	b=vKAqSS/T7zurmqOKv61kOwyCGZDxo5otYY6H9IsTcuvbBS7Ew+jDMlFTlyY9sFlR1
	 3LDTfduRE1GczyJ2blc7VPRCdi+QPv9vWFGdccy0wxex+SdioM8rM3GccixjMdQfNU
	 raivO3/9WIIdx/43k3FgZb2HjG0azTZXcYlN9d3bi/EWglqaSqpayJilZS6XCAxUc4
	 AVXtU42675L3wv/0631pCrnxtbCIWkvqhaN9wtSRAQLBuqJtgYoUEJcE/gllmelWZU
	 5vcSdxfkFRUYyUCtjNR3pr90PA2nYyn8TGc2yVPkPOPiYkU5dxmxNDTcP/CAGEkWdF
	 ki8UAed9lheTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52DE7ECAAD8
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 09:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166366565332.9723.731427276724208419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d98b063383215ea3aa8eab0799be423c1e44693fbca729e2a220bd46b1b8b00
Date: Tue, 20 Sep 2022 09:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663665653
