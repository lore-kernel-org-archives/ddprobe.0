Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE9677C
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 14:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76088C433D7
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 14:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670248854;
	bh=ZgqgOMLuhzhjD07+teyGfpRa+n75A6QIplI8biyLJ5A=;
	h=To:Subject:From:Date:From;
	b=rVGxBQcGX202dHo9GyZoEARYqb1eVBzxmsNii/vl95j0kruU/NYDvkDmoTUnffB6M
	 AG1Je580p0NX6JvfDhYORuKYVAYPobJaOLX1VzFvAo55MV/vykZQ1zjLL0QgOaWNgi
	 CIgHTndKU/VrLFwEq1K95iTLfjq8OmF5145/0fVTFGViEzqMttCxd9uNr133bEP7CR
	 6+pEEtLWt6xTFUlR8IR44cumYe3UtztzyvsRFe0YpCVxThCMWIpGMw91riwSlaCBhp
	 RBgTCV7KZTIJbcpKT016yYMV0Focl0s1kABEseJLASKbGUAnNL8kYe0ja4t8L9R8Gq
	 HQ9fujiXaFgHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E4E2C4321E
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 14:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167024885437.19447.13650498658053119711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c02871107d48ab3a6cdc2b48698a5e53f2004ed136e605bc41e894e534497bf3
Date: Mon, 05 Dec 2022 14:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670248854
