Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D492594B3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736310954; cv=none; b=ssEWbQJLdIM/jqd7lMKmAH2HRM+jZjuKSZuOGLw4o95ZyxySqoZYuI7VBmWNnxmKxwD7FtI4BV1hMrSnsOoSBDBea2etflriFk11yVtz7bl82L4ZvZAq0KS3pCJufjDYkjMBeuK9mWxiNFsl1WhtD6WDZK6t77IVWEAo8akvgk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736310954; c=relaxed/simple;
	bh=YJiMfgvsJUWW2ANB2BEekf0GL+sLYf8AhUPamf6lnPU=;
	h=To:Subject:From:Message-Id:Date; b=UGNMO04/AxTJ7aZCM9TplalemBG+Ug+q4CAEsXt+RVa3133mWQ8TMG5wyNgd/9JFuP0YweyLMlyiWvAQzOat81DdJR197oIpxoiYyHlJNPc5jkyO6l1JrEIPdX/Hzw4OI/N/Txke3CEzsMQQgw68FZWl3Oyh0BYQAM7qGUP2jfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vRP+Zr9/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vRP+Zr9/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B783FC4CED0
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736310953;
	bh=YJiMfgvsJUWW2ANB2BEekf0GL+sLYf8AhUPamf6lnPU=;
	h=To:Subject:From:Date:From;
	b=vRP+Zr9/2ZH/2AurA5CJcHNx6xSs2bIIGGpYKYG96oymo09rbCHalibEd5m24X6nR
	 /fIH/6vi5bRi83fPJbXid0IQ20aYZ3JbRGV+ypcQ1ke2CbM0HTZdHVnrVz9trFA4Xp
	 lw+LsrY5YeK3uq+SQqF4DOzE5IHBH9/NwVAvQ6AT/W8J3CviaWwQUcMiuwhd37+aew
	 PvzECKZJ9r1TOlMm9skzrQnY2HvYNPTifblDaDXfBiOZry2+nBmOn3EhI1ysCy9m7R
	 HkLhXn3ZPLsc2vX0KJGcnegUC0ilvMggYvXPtLqNe29WDLVLvWzIbp8fkSoUXkn3vs
	 X+OePD4JfbUsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3B51E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173631095366.9881.11844947318539934302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb9acd449a0ab1f62655beade1377decad0825d1ed8ec0f032f927f77f224255
Date: Wed, 08 Jan 2025 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736310953
