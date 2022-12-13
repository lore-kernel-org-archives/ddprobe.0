Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D98CA2C9D
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 11:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B2D6C433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 11:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670930487;
	bh=vbPyn/1F9J5j3SMkabezyRI8bMAMUpmim56Ln8k3+bQ=;
	h=To:Subject:From:Date:From;
	b=pczvulZ4Fdza+aOP2cISo16XRh15M9vQQoPbwzaTqUQ244ffgVkCI+SMYOibeQ79a
	 iEnsuTNjc84ZMlH8JJL7RZnAAAjx0Obi2Dm6srxfPWqs+p0ygx4ZtG/kFIBa1rgVxq
	 t7Xb53Zg/6lnMFRK6Ca4yyxq787k5yenldxjUYlKGQdJxx8eAa2/dAg6/intQiRxcE
	 YFCDAd+BmcbCsXkJo06UxtLt1x3f41/rA0Q3d+JCArut5rfxQpUQibOuuUWkJW04WB
	 Fr+6LfHlgOkoyFSv+UPwbR8LtnjwTIe5qN3tPBRYLNQG0W4+Z1hVtpWm0PYogtzRhP
	 U9K4etLmGmoYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6092EC4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 11:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167093048738.8936.11577991894179608374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaf7895f8ed58df440cd861bca861ecf354e0065183b60ec92810a52575905ce
Date: Tue, 13 Dec 2022 11:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670930487
