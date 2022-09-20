Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B103C7C
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 10:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A106C433D6
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663669253;
	bh=F55uDL1LQwfWKh9gNeOaNQKpBJY1eSXo026S5EndJBg=;
	h=To:Subject:From:Date:From;
	b=pG/muwP/GGZSqG1OSLbbebARLnvthYMuX/J1f6+7K/90zNu3gS1QFvDpCof01Zy8L
	 PpJRyvewGKq4kmsgjxgFvyd1GqqjB9Qd2wsVlYvjGzpcV7sz6Cmr+CGCSFKOdhPSEj
	 HWd10AM+5ySmL/vPE7jePW/atxzkLVxKCQTLzeEYmcsHrX91Ibi5xLpdkcrEdsP014
	 Z765L/3vcADiQQ3Rr3mztUrrM954UlG6RHPro+7hMcod+0r7634gJfjRI11V8LhbX8
	 uOy7d8ctjVWKS6y6lOckVrCeTWwJNQy8GsT681XUJvwKXXowB+2XxBlTb6vbMcEkIf
	 iisDxJVRU/7vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53860ECAAD8
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 10:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166366925333.32073.695759171268775730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd9292e5954b6c69cee0b07ad382fc4fe820e0f45dbbc1c72a44a25e306d8e10
Date: Tue, 20 Sep 2022 10:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663669253
