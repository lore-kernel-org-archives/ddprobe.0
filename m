Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C97E125CC
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 19:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8777C433EF
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 19:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686079925;
	bh=K6dNrYpsZ70IK4ACMiYOkosHeqXmtR9HqUseAfSAQ/4=;
	h=To:Subject:From:Date:From;
	b=np2Q6uEOq0eRteK8xV4JnvTVdUSNl4qbi1Y0Uwbp7jrOPTOgQAG1cohrN3AOBhq19
	 K2CFakFGABvlnfJv4jJh7pWx8vnHdmSMPGxkoM8VsnCuGg0bq4I0lrndbIsm08kxwy
	 WE1ARK22gg+Z0/zEpT1pZ4XfRp5nEqYKWoncqQzJg5CMI/H+tuXAldjOL/jJosARgl
	 ZTepwGVo53QsXFrkFIuyv6Aed/QaORQ+2J7dFXJoXLMlkoIwBMiRVdALvBMkZDjW49
	 BlT2T66abVOCqJihgNBkYBh10A80XBggQU3BN5PSBUspGbJ6NyohClLPlY761eq3ql
	 NT1mfT+ML978Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8E3EC7EE43
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 19:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168607992574.3418.10480679349417100131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31ae49984d24d16e9af58aa4ecd0f73691fa343b407ab22f5370a12b78fd8f0e
Date: Tue, 06 Jun 2023 19:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686079925
