Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D9E3CA4D
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 09:16:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5F75C433C7
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 09:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695978968;
	bh=RR+agwyr3KDcg5gmhQCkSI2At3l6ORcjBJaevgkyKd4=;
	h=To:Subject:From:Date:From;
	b=Qhh7fsXxdaCGW4rOKGZT1yIcJ/8+efqoLIt3s6CWGt5wm6OgftejSI3g7WzYF4o8d
	 pNbuYaKBfyEemo0WgVf53SmGqOqI4fWDoPAll7EgIejXUTYCLeNv/TUq5f9Is+liA0
	 xyvG30jS5Rqk+keTn3RthSu7nvW7BePIx6U0F/3P6474sYtzdci3g8dNAHMhV7hR6V
	 X8V9G0HL98WR6wrM6zPOzR7pLEPwK/NYsm7FqzaRPlC1fjaFB6iUdSUYLbKDjT63jK
	 fhIJyJSEPEHrh2TNcsUo/uhUBnX0SnLnw5mDHwvDvC8h9lZk2M/nPoM5+J8eGTq15K
	 zyUlF1a0/qRpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9801E743FE
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 09:16:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169597896868.23827.11512490188634651635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c87c99d0cf91f1c17cd8d969170a5f99f84b7ed2c6e12685b729631bc9221b0b
Date: Fri, 29 Sep 2023 09:16:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695978968
