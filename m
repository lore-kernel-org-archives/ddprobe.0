Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8F451C32
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 07:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FE7DC433C1
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665301853;
	bh=rjI7lh1AaH4mJ/XdKs5oD9AgC9TqFlMtGWDDhZ+gatQ=;
	h=To:Subject:From:Date:From;
	b=l8X8UlPJHvFAWJM4tXnQ3qcdByz8CGVN5ymIJQdwITM4H/GbT9c2EQK61Pm8g9nGR
	 Y8KyBfxwxRxBp9YWuLTQaPoTgP2P1QWQAViysnzbM7t7teqZVPdT27oDeE9ZLxTyJA
	 vxPTb/AKkMYM400JXpjZyxd1s/FDj+Y0ayeA3vIVaONDfmSfnuLjFyf8nG1ymS47NF
	 VLeK5ByFbm0OY38fpv9ZzAMM1i5S9/Cmy9+SZI0YGzeHqx+rMSGMHuf31SdNoRrz8F
	 QMG//XJR0isBJr4VSPLjryeMbAi8PaMCOoz4+CxgmG8Ik0vHS0qBRv8WPbE4WoK4eG
	 OqbJH+Aj8zwJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56976C433FE
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 07:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166530185332.5206.1004819822936283067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe0648db0f43f0536039e83f9ade2bb117d6c25c2c8db546a9a53fcadafea213
Date: Sun, 09 Oct 2022 07:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665301853
