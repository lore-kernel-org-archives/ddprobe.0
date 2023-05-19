Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247D3DDB1
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 13:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEAC9C433EF
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 13:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684504685;
	bh=roOZPmmnVw+ePUopt7C3OMDJARxeb0+uy3feCU71uKQ=;
	h=To:Subject:From:Date:From;
	b=C+GfqVug86l/j5D8Cdo+demZF4KzMo/lZtiyIzPMJbwvFS5cIxJfK+ZaD74+/ov4/
	 xN/wj1alAZIkNtI8B9mtlSc7vW343KyENArHS8+itlTGgxDiqUB0cvNpozalIOA94S
	 M1Q7GFtqZFIaQpfyqMVDBirDgZrKWm48QBgxT54cDTG0dsaeJIkQuavxTqRSx+0BHG
	 h1/zbuKtuqjFq8iAMW1I2cYo846Ep4tkqMmb5AZkP+zczOzQN4Hah74pJM/XamoX2A
	 gxR+E2I6db0TaNWV2D6GZQO9Ti5xJsHYZZjVmx7Zxn4L6M5jBTQvd2sOG6Xl6rcsFj
	 ihqn9X0asmWsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2E72C77B75
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 13:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168450468572.1208.3726220395641700737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28fe51c1bae3a6685780d8625535cfb05e7c727540bf271c3ff5cc547e02b2e7
Date: Fri, 19 May 2023 13:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684504685
