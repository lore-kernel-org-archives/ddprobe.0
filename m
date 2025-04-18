Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5097F224F6
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744937995; cv=none; b=tN5JDwqIo77DmZ++Gtc4q/yXfHN+mpOMKVB68W3e+u0KuuXspLlcrHwK0IJbVPS6Q5L5e1nxKTpe9VDFqBkCSo2o2JXLS8q8ShuMmYJHxod5MTa6KqpHtEhwHz2d7wDGAiRoSwrgOcPQsWcMU5gMwBp/W0Q/v+T1zjsDfdakOnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744937995; c=relaxed/simple;
	bh=98KqTQL7i3x0iFKL5oTfNz4oX0eNNvrVM5RajuqwloE=;
	h=To:Subject:From:Message-Id:Date; b=DoMjKvve7mlIee/jPHzUjrW1gZZrgCwKvpu69UuVa0qkY8pkXkaqwFspATVrhpHu1qeXhYR9OfaTaAmKkHLRxwpWjT3ac3OmfCKNNL5NQm9nePzGWGOYg5q4G5QLK8ga1Cj1sdhZQbl7D5unQE7mt/IfbJupNG+U+Lf3VNDI5iU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jLvzat2Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jLvzat2Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB4BDC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744937993;
	bh=98KqTQL7i3x0iFKL5oTfNz4oX0eNNvrVM5RajuqwloE=;
	h=To:Subject:From:Date:From;
	b=jLvzat2QRC7g1B6m4Rrf/Tmbxplo4tbmwiRhS6kBuK8cvK27nGDOxziYlAHLLFB1o
	 jQTl1ZyZqaLOz59K7VVGz4kZh8NZXctI/eIIpKj3wiHDooqmAW0bTJ/8a1dU1egdNR
	 1n8/evlteGEi+SMLl/hsS0WXoLxueOqepEzdj3JYLWj4GdmyNmxzrp36NbxFP/2O6U
	 FtJgPpu16ahsx9O6OnfPxuOJO3pILbtqDiMTPsqxET+oPyD2urf8Qh2Xi/R2vGUX9R
	 4uwiTUjnswfhnh/gZu7qITk4huVzk1QuNCl1h2jhS+z31OOG0TvEbT9R+8oQ+xoX41
	 C/ucEDmeGMM5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD92C369C2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174493799361.523.119846217903908872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b225a999788bc97cca525a4cfe427d5f3b06da18992e5222a603135cd99d3192
Date: Fri, 18 Apr 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744937993
