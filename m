Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0908C17
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 22:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5BD4C433D2
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 22:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678745225;
	bh=J15wfWCjGse4PfzVQTKUdCXsJdspyS60ja3PEIT8jMQ=;
	h=To:Subject:From:Date:From;
	b=oPyTSvGISf8xzIPrjzA0ZUNu85oRvgDBxPEtp8vhU6HCwyx5xntpIn+svjFUeAi53
	 Orl8oGGbY7QIpMjfUJrndNYaKMI0Xl5b7FvmRF3ATaFbUtFGW7NoRMrJI2x3z3Nl4U
	 I6tfH8RDNy2jaV1PiJViFHXh74DS0KIow5covRY+/SzLJ285WOirxv5f/CG6Fbfywa
	 olQ+/asWZ0q7W2VgyimPngyEnfD+/TNo6xcqTL0be/JGzIVcTd6fNMHAKijgfX+Yd9
	 dC7G6aoUN3S1mBOBVFg0c1nB0OxRg0w3HhU8APfZHRFXxSZVtvqVL5ZH/IY1o3Wo3r
	 7/j2cDdNJvYPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C21AFC61DA4
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 22:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167874522577.16050.10139092551838364401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3aaf284a840e90a63a84c6d87077180498ef6bb777a65c5c45f3c06f4d723e2
Date: Mon, 13 Mar 2023 22:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678745225
