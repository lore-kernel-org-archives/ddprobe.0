Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2A7917D7
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 20:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E1B5C433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 20:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670358654;
	bh=/HX9S40F7Btz0FheLv4doaskaVmOgnpDY9F8IpdHtbE=;
	h=To:Subject:From:Date:From;
	b=SjQc79rquu11jlNY3lWZ/zvzNiqrCqEzrRnHWVy9FVP5Bhz7xKlVcgE4DTlIXjRX6
	 WszySimKDv6pEOwm/SurNFIr0wmYHYBAQtFeFyOpSFyqsJ7VwAcQrKtSmm90QQ4NWx
	 svL1FM6T9DJLSwhmp/IsQAvTOPEDZ4RuERJwxMeulCRnIMJmZ2D9hmzRnGi8txme1Q
	 mRvbbzI0Q6L89X2RjZxj1tlsR634ZqRUgnJ7yozsDHlRHrexPVNMZuxVsaXCqRuyDv
	 F99vnd0JUFL1erAKM93ZbC+OmShdWzFyoddeeINFsZLzFM5OS4EhsYg7GN0/uL5SOF
	 o16vr8blRGHdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57893C3A5A7
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 20:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167035865435.10701.3873720391047162522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb00b1d206bc7180c8af13f49bdc68007e46689c7b978eca18673cdad3065c14
Date: Tue, 06 Dec 2022 20:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670358654
