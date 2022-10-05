Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD4953D6B
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 17:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D2E0C433D6
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664991053;
	bh=16fV993m4v3gTN2+mZZ22rGMRXYj6d1Q3xTixAWCnr8=;
	h=To:Subject:From:Date:From;
	b=kotUS/bsX0pKgA5B623wJ3sc6RXDbIPTlgWnLStt6FzwirJKpT59NGO64CKzI2POk
	 zuAyv7pg9BWk5BdKf8XtkmW5upiK+mewhDBePsuEPJ63SKEcGKQfcoDswKIqfKPrTS
	 QKPflAnr5bR1xI6jbWQJW4s0+zun3YsNHBCJcgQiir6HJoDJlZ7o7XkjgdiUEZ2LzE
	 s+hpraiIf3c2fdOCoOSqvDCK7kIdcpn6zNvsdyZZvm55PtDMdD80tOzwi4UFwuzo0i
	 DEy7HyxmiwmN97tf5iIuvofHD04UO0H0Lb0SWM4zKyrMPuKWxA3h6UrH2NIx6PC554
	 8KA4DVWB2LM3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 503DCC433FE
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 17:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166499105332.10069.1101007617610003492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d71f794c641ddaf792b844c538af326ff58059f5d190dae1a51ce20aaba5008
Date: Wed, 05 Oct 2022 17:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664991053
