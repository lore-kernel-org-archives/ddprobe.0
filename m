Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 129BF4D588
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 19:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gk7u+Ne7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78E83C433F1
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 19:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704915496;
	bh=K8srR4ZqZRjITaY6yMMFAC4n3VnVmnXx9z4n8p8yIaY=;
	h=To:Subject:From:Date:From;
	b=gk7u+Ne7rWzIpsEqgpA4jTnEBHlKuRk8F1V1DyISPyjRAZ+bzaq1lonWUNs5UinC+
	 0q1hfwzneP+DmsKUm8sKCQ3Y1SuI180VfegK1ugCo/vHf8x/whex7xl0QSwrJAF2US
	 Xcn0nzuZpWwppBTuDgAGdUpnKROUoSmMw0DQ7p0P+j62Q/lu6APNnLGtz6/fI0z6Op
	 Qi3lfnQxJpIScexzqQjd90bTRMU6VPRuV/JRlMRo/GqGmwcZBys/6UM0ldX5KTGP+b
	 /QXnp/h6ESZvKt+UiNFuKUW00jWNELVFxUUFA/xcXztbN7pD5VKZg/qFJ5FSITM+ny
	 zP3l7FvrRbQ2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D69AC4707B
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 19:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170491549637.12830.17125157838565198073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 792e94bd84e0e019672491ebe76bcecb5f148cd477a7fe0c9f3107ad519d2885
Date: Wed, 10 Jan 2024 19:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704915496
