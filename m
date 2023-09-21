Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7243B18C38
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 21:55:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F96C433C8
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 21:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695333308;
	bh=/FaERe+4GO4+D1IT1S7uj181k/CFo31/vG/spe3308I=;
	h=To:Subject:From:Date:From;
	b=nRaFFERANSKyEoDhYQCf9emb2jKOjlT7CsCTiJ+3FtbbQ1ZjV2Qgq/wMJ2jgHcGfY
	 9tLNWnn9xT5hYkjjVsJMvvWhcXt6KzZ+lzMLG1Vd8yR9Z942VX5p/WUL4HjAQ4wQQL
	 HV/RaKOFxh7DSsC1FCUwATnDCyEdZXlesMgELVQCCI5Ll96faczT5P/by0TG7zZMoU
	 mifYI43M0OTox2AbAPhwcAR2HSkmc+p/hQK+LWMbRN5ocqxJfFxBeBTkF8i2o3QoeO
	 hmyWjo1NX2f2sUbFMNzlzGMgxY7n2CqhAPi7IhOptH8ha2HJ1tYicPTrbh3KZegVXh
	 TiKaw45WAfPoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F0FE7D0AF
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 21:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169533330871.7711.4482135963161440823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a686013b1cb8ac359d1cf31774da4a70eb373c9639deebb47695b58c864f4e5
Date: Thu, 21 Sep 2023 21:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695333308
