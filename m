Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B138F5F
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 15:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC751C433D2
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 15:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676302445;
	bh=IwLHHcZGYQbaNdtiNRCIc39bIm9doTaDmNUGkyX9308=;
	h=To:Subject:From:Date:From;
	b=pPfoS2arrXKrcCZDPaZgCzTBGSH/t42UMS9S0288m9eaOLC54nlvIFgth0ekqrp0E
	 HzWG20B2OdolujKkbIEOMQJQabl1hfbHv6Q2aiLuZDmPePLgPooS43vB1AOUJEgApe
	 fUUExbFmDPKkS4W3KRVn1Wj7kq62TQSoQypAfQXlKPijGZWbyC+4zmsemHb64WIAdp
	 uZNthGUfH53gCSPg/KG5P4b39EF6q9RVOmf+tBG81b2AJVyI9gVs73MHS1q4xD9Aqv
	 U4v4/7TsYrXF+3MtgYh9v3Sh6FdinbrJaMWIbt/W7H6+aX32akR/lv0NtRK5Plm56b
	 jdV19iyV2ecJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6F82C636CC
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 15:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167630244573.15838.11015041595728585044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b0c5c0400640174c6625677b8849d446af93a3a8ea9c13fc6df50a0dc53324b
Date: Mon, 13 Feb 2023 15:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676302445
