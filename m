Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 667F31C3B
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 22:56:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8929C433C8
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 22:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688511368;
	bh=fVos9Bv+4Y8osqFVVrKcrJ83NlstyaXBvQMBgRJmtQQ=;
	h=To:Subject:From:Date:From;
	b=St49Q/Mn2nEGVd+bt2ftba9Hej8KSRV8YsJRmBJz4dYBD1grSDGdFDx/D658ih5sB
	 44ZUIluQA6ClOBsC+5p5wlvvfpguvs4M4fjWhVteS8eUO4tcsNyL/9CZVMri4HSx1/
	 uY8f+0WTtN5jw4cKkVvTkYk7m0frC3NA6lv/Umg9DtjP5KSUnteOZRd5kaFe+3XrlN
	 9aSiB75lJhdMrjufDtFFubwp+k0qS+517TrzCnapYUC6lYZcvMA5KwCvv8+WqDhTTx
	 4L4vbVK85QuFq+id6igJHDvWIg7End5753Cf8OMGny7aTr9q4tsgPulbWs1ezjZj3B
	 W4sPy4eQtRdEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB85FEB64D9
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 22:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168851136868.6001.4312792646477786625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 382dad2988a1eecd661f212d0a326eea73a76a34a263e583daecd69aced61920
Date: Tue, 04 Jul 2023 22:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688511368
