Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 668567F
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 00:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFA1FC433EF
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 00:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686010325;
	bh=DbsAaxxCa0zZK2O9XVBL/uqmndu5FUA22sqUYpNxCQY=;
	h=To:Subject:From:Date:From;
	b=gmIllUebQGcjSDciFnfqMNur7fHrPMnPLFLT2JxgqoVOvSSseCCTdoGHM2Iru5zFE
	 0/GGy0pvFitbroTVPkYs+jg2dZPTwOuMU0eZqRoQtpwc5AIrbo3SOfh1ZpwcvhkOV8
	 OVJ67F4fAtdLn2At9fApeBrC9iNIzB+Oq+c9PJA00iXl8pugRsmQmaum3o5BoBXfMR
	 zuCVgplJg8hHo/4ptT4z3GaOd5Otq5I9nN7dZ6sLjT7sPApXfia0LYhYHyRo2ke0bu
	 EVKN3iHCYaDthveGhtvcYzfLEY6FVLrJED5Q6y5pKyFA3OuarfFkSrHNN7ZXjiGBzQ
	 LurRhul90ZMBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF7B8C7EE23
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 00:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168601032575.26753.1741839396537156235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47478bc3e0ffa2cb49928e144e5e23a6fd8ac6f56a16d811a36bfda31a2ae1a4
Date: Tue, 06 Jun 2023 00:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686010325
