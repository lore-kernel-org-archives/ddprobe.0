Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 530C1389
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 13:00:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713531623; cv=none; b=MWTjFbxx3bKaPbTfDDkqkbYZhgnsYVfttWUSI5QW6c1DC2QNSnVCD5apg6fxb8ePHNQ47Yu+O2zhT7Muq3gV7RdCxBKC9neNbGoXkC/tvQ+UKS+KTGcydpIk8dY/NFaEKZQiKEhFgUvM6MsBQnTTqjVdlzGjq5c2eczM83H8Jg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713531623; c=relaxed/simple;
	bh=Y2cxC4NVHflR8g/ioeeUIQkMA6F/6WUpe2zyLkcRkDc=;
	h=To:Subject:From:Message-Id:Date; b=Y/p4abKNzRipZdzlCLfCLZsb+s7SLqSrX6y3D/72xXkPM9GIZVNvzmuI0wiJu1OlG76rwCrAd0HvSXO2e+pno5Gyzc9XYGORDzV/XUPKg7BGUdjCToeA1T79DQYcUKPladnaaDLhXioKebGZDvLYXeRk0hCgwG8FB5eV7/YWo+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PcQq+9f4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PcQq+9f4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D516BC072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 13:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713531622;
	bh=Y2cxC4NVHflR8g/ioeeUIQkMA6F/6WUpe2zyLkcRkDc=;
	h=To:Subject:From:Date:From;
	b=PcQq+9f4G6NM2zHdjJ1e3cOvR0WnQb9pK8pW1Q4/rhY/1fbgd9V3Xyprkkoaakv0U
	 /+CdBtAU6JBLsoES01CG25BVS9AOZgKFuH93bi5WQNX/xWV8e/D+iEnX093zD0VPQP
	 6CihL19Sn38MGL28PbM0VxP3/6L4XoQE7kmG0OPbwcJRwbGP+W0RVjVLAYPPyzsqch
	 O38uQkW0X/FGUPkBITPxgITW/pfUMukHUYr/brV4Me/fojXsLJ50ngQup9K8QNL5kY
	 48HezQIzcXb1rmssYQ9c4PKa/e7E/Hm/QdHhfL+3N2qYZqI8lJtM85gtjpyqRqj+kS
	 XVMo4p6mAA5zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEEA4C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 13:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171353162277.3463.3318092864257027001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29e603ca3ad4303a3b6e60e93b648b8e6b75987f5f2476017bbd14d30930d3ee
Date: Fri, 19 Apr 2024 13:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713531622
