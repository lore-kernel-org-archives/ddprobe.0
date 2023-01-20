Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE80517C8
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 01:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 895B0C433D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 01:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674178887;
	bh=lYLW5ibCcvdoQcg8ktbTlncXFxJt9veCUD11PPm6oow=;
	h=To:Subject:From:Date:From;
	b=sIVFp13NsfpEAa50p2FRypvHqT5o0KbNf2Vsm0vhIgTx/nRgr2RGTAhPyJYAd3ELY
	 C/L7Ii5PkFD2z+49rPDPxUoMbOE1rb2eVaiyYkckR4NxZyEn2zBp54riQl19NyvJPs
	 ct1Aq6sGnCsERjjmyrUGf/bVzo4vkO+U7k+f9RCanIrSQZnZmo8TMqPUSVq2Qm1iHA
	 h2Xt8iU0weZ/+h4dlFMQHbgF37fmZWe5fRtMc9NEw73EaPL63+2c1GW5CQRCCa2XTF
	 0FHds7r+AvBdJLmjjNbZQTUTuMQGVovxmtA1TCG56xAPSRarh9Eg4Zm6HKF5faSiBo
	 ui9BnPySsQ/hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D4C5C38142
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 01:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167417888742.29066.12460432857406952264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02e1d5279f75ca3386b302518611a6eb2366387848b78754f36f581e2e35851b
Date: Fri, 20 Jan 2023 01:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674178887
