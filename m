Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58316C2C9
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 10:51:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF23AC433C8
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 10:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689677468;
	bh=uSQxJ+LyIyXyUH8YRXp/tpeW++E9L3XuFETbP4IQz6c=;
	h=To:Subject:From:Date:From;
	b=VoVpDjhZyccuauBvbAaLJp02ZIzD/CU5CFXlAWU6WNcbH3hioSMkGyGq/Ue7Ff4I2
	 t/jvwko4o52Rqovr8VrUQtPrF2yyiTpn5bRcMKav7LxxlkoVY7CKU1P3pXRxp4wajX
	 qan5ej4eqOoCQP4afuEj9qtmsdVZvKHIo8WuveoAYGXwflWjEYhJW3sqXTt0k7MfO9
	 aQjzxcfgFR7yacszJtULNA44CszrrZMzCifeq46bE9b/GfLXQX61uP7RsrPO+Tzbnm
	 KA6uj1OKYYz1oDMkQXUIdL+rIVzggWbPCLDTZhG7pH6n40UJ5wuF8B0MJsofv2gdSC
	 buptOwtTpmbKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A55CEEB64DA
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 10:51:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168967746867.15290.6214442081512184406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7b50162950ab0c86797d61f0e18b28ae5bf5e3295fa9ca9b9f10f579a5c5169
Date: Tue, 18 Jul 2023 10:51:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689677468
