Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5FE864C
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 00:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7902AC433C1
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 00:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665102653;
	bh=LcnfD3BYaU/lj01MLkvDwbzstNb/y6OFfHTPF7m5ItI=;
	h=To:Subject:From:Date:From;
	b=MYFEXiOKUSxX8I/11ZWdU/wTI/hj0ldXzSKTXUodWfBY9Vsgay6jITPPWs76t1JFN
	 F0iDzfUNmQ/Wpsp0XgRUuyN9TPBSO9Td45E5YEh6OEPINQwcSr2/2UMVa0oNeBB21d
	 0cbwnsLSIu3arSba1DDRCtkX7QN3j+2CZidehzF4JKY4nJSQG43b6wsi8wzfHbPHIi
	 f+l65AxexOZ0j3lsdt3n0ftRv8p9TFTuhoXrnAxgpipiZTGAud1jBnRo4CA5WTvo/m
	 MwjT573dhM5iCrfrdHaA8QWkWbNYRELmmhtpDDM0pT62gfI/KG0CeSFktLPudmJXfg
	 R01d6jYM94yxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A391C433F5
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 00:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166510265334.28197.2229800776364297272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88b5141007b3f02526145ffc6861db886c643c6574784e836e42d54b8ed2ed96
Date: Fri, 07 Oct 2022 00:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665102653
