Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8D1B6AA9
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 16:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66273C433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662049253;
	bh=mA7xv/g7F8DPUh2bcRU2o4URZ1jI4mXyCUk00E1I9dw=;
	h=To:Subject:From:Date:From;
	b=qRXLy9QxEATGrB2QDoz6hPO/3Wndw3zUXabFH4fE9/UNgdlBDkHkdJ+UOStP5FY5A
	 j3jznFyW8pNpg8QK1hzy8S1vADpat0rtYaip56wfULpEGfoyHvIUtkREp66F2HX+XS
	 Z2n/uVCABlEvMVjBwbJKnAXPvf2xFDShRn47Lqi4oqjNRzfkGQ9dLS6zX/12l2/n2M
	 H1JOZK24P8oDO/Iq67BhpZI3re6+qE7YIutELnjmgbWxUO2tJiULvOQ3aoXy+rDluV
	 hkzOcsqW3ZvaVgqOYRfClVJExmiLF7fHlba+6CkjMQIM9KcXCRp3FBRVzQ8ADzlBvT
	 iF6BuJu7P7UIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F740ECAAD1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 16:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166204925331.13261.263638091923854500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aed57ab776d36882831c629d19a610a24706efad7f5db1a96deae73fcb3fb91f
Date: Thu, 01 Sep 2022 16:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662049253
