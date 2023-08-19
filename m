Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 693116125
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 17:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE29BC433C7
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 17:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692464648;
	bh=vkiWAYFfEV1ZrKvhKQ3JGdNQpJ74OGvxyqRI4BJfZOo=;
	h=To:Subject:From:Date:From;
	b=oiHKz4FG3EWf5Z62mNgZAUOM5OslJYQtEpapTgOQKjXuxLfE7YkNsbkeJPhXic3jE
	 Ram+Lb2ZKgaGAn+eqPlReDZsa68O0vW8giSiAAW8Nbj9NGHn99/qZ5U8LMlav9wSE6
	 N6nmKCQwV/9D+0TEpeM9F0I7ewKHcJNc9FWbuRtGZsH2g19Ud78A2FvboG1tMEbn4g
	 idafPS/57krI0/VTf4vlC+Fq9Xbb+SKTy7Ip0E10vEfoSDte3JUlYJBS8DujKrXiQC
	 6ZXWRYwEidKigA+Y+BXbqhnPxM6VPYw59H0qfl68QTtVqUqDKWfNB6f6x30CsxzvRP
	 2SkauW0lCEu9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3306EE4993
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 17:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169246464869.22258.13255690250452825698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da7dff36370972c8da113cd022be1b37c7ccdd4001188d095894f6e2808a3cc3
Date: Sat, 19 Aug 2023 17:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692464648
