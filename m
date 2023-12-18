Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 048764F21A
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 12:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dVo/wIP/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76EBEC433C7
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 12:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702901296;
	bh=7n9TUarTbZY66OeyD3anajc8DJAi9d84X0E1awrHyvo=;
	h=To:Subject:From:Date:From;
	b=dVo/wIP/bZq7CsNm8PHRfUWpao8lUNzXUImW9hFhD25VSAUvQn8t5WOUxqom8PcR0
	 hRPWCCDdrjncS/LceDrWEoErZYUxlF5+CXLD9U6jifZBmdJVbnzPb4xFq0q7xygh81
	 YOsOCA/zjZCXfaTDBa1kdSQU8KZlkvORTF6BmxaqWIrYixXuBLiQ1vlCZmI4vQT7MC
	 CVBCrqVaLGY+4OFVSqJaU96leOTYljs6WE1jAlD+vTIfA8SdEYzLuv59P8hWjgdjCq
	 4PyJkKlZR9REdX6c4YJKIzoQ0EcyqXCqODdXA5bq72y3vRtPLaew9zUfrKOGNO0P/1
	 jCA35fQv8uJsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 602BCC35274
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 12:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170290129638.2530.16864450404990326002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7a30fd695f42c11a1967fcd9ba5a584e13da99a3c3301a021fbd4961257ab49
Date: Mon, 18 Dec 2023 12:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702901296
