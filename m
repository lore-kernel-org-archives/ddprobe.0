Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411431A58E
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 08:37:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QxAmE5qc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C69D9C433C8
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 08:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697445428;
	bh=GSiQu42E09/JvDGqNxKzbjl593PBq8isGBu8mcigpe8=;
	h=To:Subject:From:Date:From;
	b=QxAmE5qczOVv91XSVxaKcQMDC577d2k+XZ0THojiv+KYC78Ir+BneTChlp/NdaGZb
	 XLyIAThmHYwG3gXJxBr8LfBLWegn4WBo293NZYvdXzt7NgvWSWaoOir4HqhW5R18FW
	 AiPEX18XZgm13dwX0LXLe5KgRjAbfC/NPR+60fdb06r+fu8Inn9cZ0qSjMVh6i6II8
	 EyAr8GeuM+ImxjqWiOlwuVEyc0KFn0mHoF7ZQbU9yJiOpdEr9j2f19ataDGOrwNfNo
	 HNpF8BKbv0lKCdGB71z6DZnHmen+Qnkgtw/zrSqTlGabDS917G45yjiSeV6+1EUrYe
	 QHSJHk738aA7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE739CDB465
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 08:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169744542869.2787.17038296463790406778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcfc841c342293cf9c2b4f6dd47e0176f32340c5d13185360c20c757dd9f996c
Date: Mon, 16 Oct 2023 08:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697445428
