Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D621509AB
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 16:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776790654; cv=none; b=bX+Jtgyo4y0KErrX4KZ0O8XoNbXhqRmaTlbrfZDeN0NjwrG9MG9GgKpGe9l7FQze5JHfZIzYYsEhX4VeTj2qgc4VDM5H19EhFGdzNEd2ekjcnL0/yomB4XfpWIqv98KsN1i17jsX5GQ40asN+AJAn5kZyBgpPYZOZ+kX7oBmT70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776790654; c=relaxed/simple;
	bh=Lb/T7D8iXM9vQ4ntNkNxnhb19QggOGmaulV3vaT07iE=;
	h=To:Subject:From:Message-Id:Date; b=ir1RYae4jiChAx7m0DGU5EYWVh8zHOgAVdBpyuiyxvUmZD0vL3V+1yjR3epQgvFFtlLubGSKC9CbzCLE1bkLYvAjcm8GRX98tienJCYaW+VAsU1B6DL8ZoWYr1i1PgF4dbCVq7uCiUv9qUdsfPaeip5ANsZpUuY4Nxx0UW/c67Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OuKmnuWg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OuKmnuWg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B688CC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 16:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776790653;
	bh=Lb/T7D8iXM9vQ4ntNkNxnhb19QggOGmaulV3vaT07iE=;
	h=To:Subject:From:Date:From;
	b=OuKmnuWg0g6ViJcjJ69Wo+PjzaylLhaHTNP4rYu8vrERJyQLlrIHNF7bGky1ZPR3x
	 U43KmqWkno96zOO+ktWe9fmuYMVY2RelcSs3owVDJhxdJ7gC3NQ74m8mSaS/vuk8Mb
	 z+kU9v316QQpP+tQS7pia87J30p/6G0rvvwSTmbRBEswv2zBOayzUAcBfE+NlpLIaW
	 xUOYH0sd6F/1epZ1w+Kyy4Yrt2ddV1KJUWwDKinf0UsjY9Og9L7T+g0RHU3EzZf9p8
	 9z48qmVI03E+YB7KqrfhdJ/3me1V2QtnNO0iLp5iR91dY1K4R37yBo/YU3pnvdZTQn
	 I+HmOupyIOOQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9373F8FA9A
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 16:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177679065368.7007.12349807583446244678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aef0f530a4edb1ec75cc80e35d3bbdf489f7a4bfbe5a1a0c542f24a7202880ce
Date: Tue, 21 Apr 2026 16:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776790653
