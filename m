Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B59C3610E
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 20:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F6B2C433D7
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662669653;
	bh=T0iabw/1BjO7NSkMRpnQ6vM3HPKUadS7Wnjpt/cG6Sg=;
	h=To:Subject:From:Date:From;
	b=pmQ6ZU6RFi8WeBB5nN9I7ECdPBbSdTNrUw7PHTdjGJ4RaEjI8T9phbKAyFxDT+cRg
	 y2Zyn0w/ymdmTNLp3ri9/CK8Z/rUX9MWXvoNAdKIH3G37kJIXSDTmQgjI9T3wR7YyH
	 XHKVNeNTe4kUSNC+SkY36WA1Azo05ZFiQcdviQZdZZ7q2VvXOJcgW/jWLd26u4W4cE
	 lUkKBQD/RGM2SuhEUNCuRNLpnNpP970iehEGqeGEotHjl8vBQdkLpD7QXHL0InG2ed
	 izAeOtQaDAdzNmngOxSXcs5LrI05Uu1sAnahirQ3rtAEFmAhKiH0X8ypbwEo/gtK3V
	 25CJdli5RlKvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5777DC54EE9
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 20:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166266965334.27751.1361624620690756536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58e6de16323bfe1cb42f57af58b4e73757cc74c725e7ed68dd86b9dd3326cb87
Date: Thu, 08 Sep 2022 20:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662669653
