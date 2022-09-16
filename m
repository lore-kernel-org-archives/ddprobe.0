Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8D547E
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 06:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73D72C433B5
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 06:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663309853;
	bh=+PUwy/3yAcdVEF3eC8/05TxErB8lalNBl2gvNmOdmAg=;
	h=To:Subject:From:Date:From;
	b=CduD7TCfMa/Uwb2st4p617DHPli4RcAuIc1JeLq/oQQbu0gpr6x3llJOpS17YrEX2
	 EjclFCwC60lH+UoDfHJ/xV/PAtaS1etG7BTePiBNQZf1SzNkp9Z+g/vqKfFA2mkqZS
	 2TqIVXNdzqzT9zYwun1AqTlZvSWA2/3QWIzBsFSOAg06VTAaZzSv1+Hsbj9kOd2xQW
	 54eDkVZRoQmQzQY6BKZehHWQORkJLj8pMaV1IMU1rhBVL1oN++BY1keTOeXoDrebpE
	 mbu27PgrJY+r9Ld9EDL2cX2cVmliAtK+WmDBnh/WC85VvHqjqwC1AD2Xn6dt3/kwS0
	 1bNPaoD1rYtRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A1CEECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 06:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166330985335.9009.4134721959341157473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 007018dc4afad8abea385cd67e9a0be6739ba688d08666706e55a5c885ca43ae
Date: Fri, 16 Sep 2022 06:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663309853
