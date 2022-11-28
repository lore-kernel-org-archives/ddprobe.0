Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0A5A7E
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 01:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E0F3C433D6
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 01:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669599054;
	bh=xcrZ4M97E31U1txnrszUcAYGshOQnpDdYBJZRcp4kc8=;
	h=To:Subject:From:Date:From;
	b=hF+mkPBen1utfDW5N11jPo/C6gpJ5cTQU2WRsM0awKF0ojqV9vN4YgskUPtTzr82F
	 JihYmeP7Lxa7eeo+vriJfwr8TnZt0DsstOSNXSXfTjdBrNB9nwYv4FGGc0aWR9MZo8
	 rwXij0wpe3+LvDNaK9oa6C8SImpqXBiKnTXAU+h1O46fT4OGsQSHfRdP2ddm6h3REc
	 O/iZAGE8z9A1X6VX95DNWxxC5K2/HCsQH5tQsSzD/PIdtTOuk4/K1IXtpwcBzOeSzh
	 LtsLT2eKuhrCPEPLe4bDOCL84O60i/LFH0a8cCeb48qFBN3MUPWbpdz9BYi+413Djc
	 JxnitcSBVhewQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 532EAC4332F
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 01:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166959905433.11459.7908323692611370111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e47e987589fa346fb3ac041fab2065f3ceb90cf095b2a8c97388700effad8b8
Date: Mon, 28 Nov 2022 01:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669599054
