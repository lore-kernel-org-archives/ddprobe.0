Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD5830EF80
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 12:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783858714; cv=none; b=TUV8IjKy1i65HfW4bVGD9Z838ArsDcuhpwSvvDrtSOKQgv5Jzn3KRG3EAdY232v9dxSnF7bFw+vJmXpe7UjV7RVhIflZT8yBDPrB09LR8SO4SBrQ5OGsHrWP0hXoqyqOuMxI9/Cw7WkNZjKulWQREcyyAFS476NnJy5gO5Avfho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783858714; c=relaxed/simple;
	bh=0U5SvcL7Ruo1oVEVgCWnqbwsICvZ6cpGLh8IwPT3x0g=;
	h=To:Subject:From:Message-Id:Date; b=MTtxMrgJ5PqQhe2EExZpv9qH2yVeyXoJhFU/8wp7qE7wrDEv6VfmFTC+nOqt6rkOhvhIzW+YRArmvs+suPXDLy05xudsE3THEJjbTXQ1xwCyw9ai6GLs/eWehjvpBLISeK7hwCdEtFXNM7+/x3vsrHfGFu/Cgn2gRmCgNPXQJGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RDDlZQnv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RDDlZQnv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2901C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 12:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783858713;
	bh=0U5SvcL7Ruo1oVEVgCWnqbwsICvZ6cpGLh8IwPT3x0g=;
	h=To:Subject:From:Date:From;
	b=RDDlZQnvzuhzo542iA4TIHvVJ4It7TUXh+m6nprRJjVmoWZAh+DqYCOVKdIMro20o
	 yABo1VrPbPPTfO9pWp/Jeexxz+4MnODOvOeJEohQnXi/ynAjun+VkY8MQlVb6rJCWE
	 +6cXi/OQt2pxaj63zrdLlcQNxnvr9W0Ux2CiI4OER8Z5DbMOWyMby9aCdXmDlkkr4P
	 7Gskdq2L/Uv9wk3EvOLJpgrsoTos6uppar8lO11b2BK+NcB7Vz8kmebYNRyr+3z7XB
	 2fKOqpeOfqs9AtbMq9Yb25lazvZD375sn4i06PFYQTXcV3N9NdDC5NAXp0DVa0IfHp
	 fQhwhRfOVaPlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF7C0C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 12:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178385871368.6617.12852296650042302388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c696d695a3763b2703093593cf74f476248c3c7312126cdcaf3f7754a898496a
Date: Sun, 12 Jul 2026 12:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783858713
