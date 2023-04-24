Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339D07C
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 13:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D123FC4339B
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 13:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682341925;
	bh=/BoJHrbJdZ08qr6Ip+fLUXjUFM34jIV9pvZaSaqW/nU=;
	h=To:Subject:From:Date:From;
	b=IVei2CU5x5xenPdWdxGXS/eQwV3JYmer3ETa/9EdpmJdPxe6Al+Rsg6OJ/r8pdNqZ
	 rmyifJIOtIbekFsBZbnU6zJoDUWf59kXNgn+y1zdHhJGe9N8ZhWhYPuDjUq4VDBqdg
	 RkWF7L0Gr+WB+m1BqkN9xrO856vUGZM8Y2ZDTxaFs9PypjUAAObKUb7pTmjMQmTI9w
	 nyRc/UB461cNrrxtiKQeyebCEKvOZzG3QEPCMTvL/hSvwSXZj1Kf8Kw9U2yaun2hGC
	 PRhbcIfz/2Kol9ZFEvEjvB+bETDWuNkoyg+NkoRjadZ9C5ZRX56pZcX9FXv5uEvfY2
	 x4MG4QHDe9Xpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8AD7C77B7F
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 13:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168234192574.5053.14036066879463240622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 030030f3327a4cb3ac7432ce9680b8427e079cefdc5821baafb5e3db9f104dc9
Date: Mon, 24 Apr 2023 13:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682341925
