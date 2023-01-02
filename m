Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D81F028EE
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 11:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 976E7C433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 11:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672658487;
	bh=pnzsDasiqq4Gaotoy9ck4MYNqpC5bxPCVAl1FRYsyiM=;
	h=To:Subject:From:Date:From;
	b=h+azHVP/oglCa0/6XxMjs0rCbst7Z69pv0qrc32VHavPE3BS8E1a4oGKC+qZ+OCZ1
	 Hdl8ccxMiFfNHDTDETp+tmJhSU9ZkL6UXZrASIqnPambnjtJx1L3sC3A6oBNYCu5LK
	 lm3+0qZyNm6Yx8bu3QeiOpySEmXTeVGbZ7oPzB+Gi+DjJU4NUWXy8TvcXwpYMY+B/Y
	 krrGrYINd//DRxtvbt0ctR4BwjYO82Siy2IZhJPcW/+T5WwFa+bLoGCvfGS3CSAjGM
	 bJRP3yuHF7aRNBL1ijfCg88wdiGOK5ZxHpRMIrfJd2XA1jB0sQgVHK94NRmlzsPqla
	 alGVkCMPPhyZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74062C3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 11:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167265848745.3346.17827615308320872059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ef65256e6c1bf08547949081a6b248515498e83b8f3be120f9a7672f564aeeb
Date: Mon, 02 Jan 2023 11:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672658487
